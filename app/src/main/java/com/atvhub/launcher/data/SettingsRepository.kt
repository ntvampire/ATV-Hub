package com.atvhub.launcher.data

import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import com.atvhub.launcher.model.AppItem
import com.atvhub.launcher.model.HomeRow
import com.atvhub.launcher.model.RowType
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

val Context.dataStore by preferencesDataStore(name = "atvhub_settings")

data class RowConfig(
    val id: String,
    val typeName: String,
    val title: String,
    val isEnabled: Boolean,
    val orderIndex: Int
)

class SettingsRepository(private val context: Context) {

    private val gson = Gson()

    companion object {
        private val KEY_ROWS_CONFIG = stringPreferencesKey("rows_config_json")
        private val KEY_APPS_ORDER = stringPreferencesKey("apps_order_json")
        private val KEY_TORRSERVER_MODE = stringPreferencesKey("torrserver_mode") // "internal" / "external"
        private val KEY_TORRSERVER_HOST = stringPreferencesKey("torrserver_host")
        private val KEY_TORRSERVER_PORT = stringPreferencesKey("torrserver_port")
        private val KEY_IPTV_M3U_URL = stringPreferencesKey("iptv_m3u_url")
        private val KEY_IPTV_EPG_URL = stringPreferencesKey("iptv_epg_url")
        private val KEY_ASKED_DEFAULT_HOME = booleanPreferencesKey("asked_default_home")
    }

    val askedDefaultHome: Flow<Boolean> = context.dataStore.data.map { prefs ->
        prefs[KEY_ASKED_DEFAULT_HOME] ?: false
    }

    suspend fun setAskedDefaultHome(asked: Boolean) {
        context.dataStore.edit { prefs ->
            prefs[KEY_ASKED_DEFAULT_HOME] = asked
        }
    }

    val rowsConfig: Flow<List<RowConfig>> = context.dataStore.data.map { prefs ->
        val json = prefs[KEY_ROWS_CONFIG]
        if (!json.isNullOrBlank()) {
            val type = object : TypeToken<List<RowConfig>>() {}.type
            gson.fromJson(json, type)
        } else {
            getDefaultRowsConfig()
        }
    }

    suspend fun saveRowsConfig(configs: List<RowConfig>) {
        val json = gson.toJson(configs)
        context.dataStore.edit { prefs ->
            prefs[KEY_ROWS_CONFIG] = json
        }
    }

    fun getDefaultRowsConfig(): List<RowConfig> {
        return listOf(
            RowConfig("row_apps", RowType.APPS.name, "Приложения", true, 0),
            RowConfig("row_continue", RowType.CONTINUE_WATCHING.name, "Продолжить просмотр", true, 1),
            RowConfig("row_new_episodes", RowType.NEW_EPISODES.name, "Новые серии", true, 2),
            RowConfig("row_iptv", RowType.IPTV_FAVORITES.name, "ТВ Каналы", true, 3),
            RowConfig("row_movies", RowType.MOVIES_DIGITAL.name, "Новинки кино в цифре", true, 4),
            RowConfig("row_series", RowType.SERIES_DIGITAL.name, "Новинки сериалов", true, 5),
            RowConfig("row_favorites", RowType.FAVORITES.name, "Избранное", true, 6),
            RowConfig("row_yt_recs", RowType.YOUTUBE_RECS.name, "YouTube: Рекомендации", true, 7),
            RowConfig("row_yt_subs", RowType.YOUTUBE_SUBS.name, "YouTube: Подписки", true, 8)
        )
    }

    // Загрузка установленных приложений Android TV
    fun getInstalledLeanbackApps(): List<AppItem> {
        val pm = context.packageManager
        val intent = Intent(Intent.ACTION_MAIN).apply {
            addCategory(Intent.CATEGORY_LEANBACK_LAUNCHER)
        }
        val fallbackIntent = Intent(Intent.ACTION_MAIN).apply {
            addCategory(Intent.CATEGORY_LAUNCHER)
        }

        val leanbackApps = pm.queryIntentActivities(intent, 0)
        val regularApps = pm.queryIntentActivities(fallbackIntent, 0)

        val all = (leanbackApps + regularApps)
            .filter { it.activityInfo.packageName != context.packageName }
            .distinctBy { it.activityInfo.packageName }

        return all.mapIndexed { index, resolveInfo ->
            val banner = resolveInfo.activityInfo.loadBanner(pm)
            val icon = resolveInfo.activityInfo.loadIcon(pm)
            val label = resolveInfo.loadLabel(pm).toString()
            AppItem(
                packageName = resolveInfo.activityInfo.packageName,
                activityName = resolveInfo.activityInfo.name,
                label = label,
                icon = icon,
                banner = banner,
                isVisible = true,
                orderIndex = index
            )
        }
    }
}
