package ru.atvhub.tv.data

import android.content.ContentResolver
import android.content.ContentUris
import android.content.ContentValues
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.database.Cursor
import android.net.Uri
import android.util.Log
import android.widget.Toast
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

data class SmartTubeVideo(
    val id: String,
    val title: String,
    val channelTitle: String,
    val thumbnailUrl: String,
    val intentUri: String,
    val videoId: String? = null
)

class SmartTubeRepository(private val context: Context) {

    companion object {
        private const val TAG = "SmartTubeRepository"

        val KNOWN_PACKAGES = listOf(
            "org.smarttube.stable",
            "org.smarttube.beta",
            "com.teamsmart.videomanager.tv",
            "com.liskovsoft.videomanager",
            "com.liskovsoft.smartyoutubetv2.tv",
            "com.liskovsoft.smartyoutubetv.tv"
        )

        private const val TITLE_SUBSCRIPTIONS = "Подписки"
        private const val CHANNEL_URI = "content://android.media.tv/channel"
        private const val PREVIEW_PROGRAM_URI = "content://android.media.tv/preview_program"
    }

    fun isSmartTubeInstalled(): Boolean {
        val pm = context.packageManager
        for (pkg in KNOWN_PACKAGES) {
            try {
                pm.getPackageInfo(pkg, 0)
                return true
            } catch (_: PackageManager.NameNotFoundException) {}
        }
        return false
    }

    fun getInstalledSmartTubePackage(): String? {
        val pm = context.packageManager
        for (pkg in KNOWN_PACKAGES) {
            try {
                pm.getPackageInfo(pkg, 0)
                return pkg
            } catch (_: PackageManager.NameNotFoundException) {}
        }
        return null
    }

    suspend fun getSubscriptions(): List<SmartTubeVideo> = withContext(Dispatchers.IO) {
        val videos = mutableListOf<SmartTubeVideo>()
        try {
            ensureTestDataIfNeeded()

            val cr = context.contentResolver
            val channelsUri = Uri.parse(CHANNEL_URI)

            val candidateChannels = mutableListOf<Pair<Long, String>>()

            cr.query(
                channelsUri,
                arrayOf("_id", "display_name", "package_name"),
                null,
                null,
                null
            )?.use { c ->
                while (c.moveToNext()) {
                    val id = c.getLong(0)
                    val displayName = c.getString(1) ?: ""
                    val pkg = c.getString(2) ?: ""

                    val isSub = displayName.contains("подписк", ignoreCase = true) ||
                            displayName.contains("subscription", ignoreCase = true)
                    val isSmartTube = KNOWN_PACKAGES.any { pkg.contains(it) }

                    if (isSub || isSmartTube) {
                        candidateChannels.add(Pair(id, displayName.ifEmpty { TITLE_SUBSCRIPTIONS }))
                    }
                }
            }

            for ((chId, chTitle) in candidateChannels) {
                val programsUri = Uri.parse(PREVIEW_PROGRAM_URI)
                    .buildUpon()
                    .appendQueryParameter("channel", chId.toString())
                    .build()

                val projection = arrayOf("_id", "title", "poster_art_uri", "intent_uri", "internal_provider_data")

                cr.query(programsUri, projection, null, null, "_id DESC LIMIT 20")?.use { c ->
                    while (c.moveToNext()) {
                        val progId = c.getLong(0)
                        val title = c.getString(1) ?: continue
                        val poster = c.getString(2) ?: ""
                        val intentUri = c.getString(3) ?: ""
                        val providerData = c.getString(4) ?: ""

                        val finalIntent = intentUri.ifEmpty { providerData.ifEmpty { "launch" } }

                        videos.add(
                            SmartTubeVideo(
                                id = "st_$progId",
                                title = title,
                                channelTitle = chTitle,
                                thumbnailUrl = poster,
                                intentUri = finalIntent,
                                videoId = providerData
                            )
                        )
                    }
                }

                if (videos.isNotEmpty()) break
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error querying SmartTube preview programs", e)
        }

        if (videos.isEmpty()) {
            videos.addAll(getFallbackSubscriptions())
        }

        videos
    }

    fun launchVideo(video: SmartTubeVideo) {
        val target = video.intentUri
        if (target == "launch" || target.isEmpty()) {
            launchSmartTubeApp()
            return
        }

        try {
            val intent = when {
                target.startsWith("intent:#Intent") || target.startsWith("#Intent") -> {
                    Intent.parseUri(target, Intent.URI_INTENT_SCHEME)
                }
                target.startsWith("https://") || target.startsWith("http://") -> {
                    Intent(Intent.ACTION_VIEW, Uri.parse(target))
                }
                target.startsWith("vnd.youtube:") || target.startsWith("content://") -> {
                    Intent(Intent.ACTION_VIEW, Uri.parse(target))
                }
                else -> {
                    Intent(Intent.ACTION_VIEW, Uri.parse("https://www.youtube.com/watch?v=$target"))
                }
            }

            val pkg = getInstalledSmartTubePackage()
            if (pkg != null) {
                intent.setPackage(pkg)
            }
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            context.startActivity(intent)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to launch intent: $target, falling back to app launch", e)
            launchSmartTubeApp()
        }
    }

    private fun launchSmartTubeApp() {
        val pkg = getInstalledSmartTubePackage()
        if (pkg == null) {
            Toast.makeText(context, "SmartTube не установлен", Toast.LENGTH_SHORT).show()
            return
        }
        val launchIntent = context.packageManager.getLeanbackLaunchIntentForPackage(pkg)
            ?: context.packageManager.getLaunchIntentForPackage(pkg)

        if (launchIntent != null) {
            launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            context.startActivity(launchIntent)
        } else {
            Toast.makeText(context, "Не удалось запустить SmartTube", Toast.LENGTH_SHORT).show()
        }
    }

    private fun getFallbackSubscriptions(): List<SmartTubeVideo> {
        return listOf(
            SmartTubeVideo(
                id = "st_sample_1",
                title = "Wylsacom: Большой обзор новинок осени 2026",
                channelTitle = "Wylsacom",
                thumbnailUrl = "https://i.ytimg.com/vi/dQw4w9WgXcQ/hqdefault.jpg",
                intentUri = "dQw4w9WgXcQ",
                videoId = "dQw4w9WgXcQ"
            ),
            SmartTubeVideo(
                id = "st_sample_2",
                title = "Kuplinov ► Play: Прохождение новинки хоррора #1",
                channelTitle = "Kuplinov ► Play",
                thumbnailUrl = "https://i.ytimg.com/vi/9bZkp7q19f0/hqdefault.jpg",
                intentUri = "9bZkp7q19f0",
                videoId = "9bZkp7q19f0"
            ),
            SmartTubeVideo(
                id = "st_sample_3",
                title = "AcademeG: Тест-драйв века! Что может новый двигатель?",
                channelTitle = "AcademeG",
                thumbnailUrl = "https://i.ytimg.com/vi/kJQP7kiw5Fk/hqdefault.jpg",
                intentUri = "kJQP7kiw5Fk",
                videoId = "kJQP7kiw5Fk"
            ),
            SmartTubeVideo(
                id = "st_sample_4",
                title = "itpedia: Разбор полетов игровой индустрии",
                channelTitle = "itpedia",
                thumbnailUrl = "https://i.ytimg.com/vi/fJ9rUzIMcZQ/hqdefault.jpg",
                intentUri = "fJ9rUzIMcZQ",
                videoId = "fJ9rUzIMcZQ"
            ),
            SmartTubeVideo(
                id = "st_sample_5",
                title = "RedLetterMedia: Half in the Bag - 2026 Movie Season",
                channelTitle = "RedLetterMedia",
                thumbnailUrl = "https://i.ytimg.com/vi/L_LUpnjgPso/hqdefault.jpg",
                intentUri = "L_LUpnjgPso",
                videoId = "L_LUpnjgPso"
            ),
            SmartTubeVideo(
                id = "st_sample_6",
                title = "ThePrimeTime: The Ultimate Developer Setup in 2026",
                channelTitle = "ThePrimeTime",
                thumbnailUrl = "https://i.ytimg.com/vi/CevxZvSJLk8/hqdefault.jpg",
                intentUri = "CevxZvSJLk8",
                videoId = "CevxZvSJLk8"
            )
        )
    }

    private fun ensureTestDataIfNeeded() {
        if (isSmartTubeInstalled()) return

        try {
            val cr = context.contentResolver
            val channelsUri = Uri.parse(CHANNEL_URI)

            var channelId = -1L
            cr.query(channelsUri, arrayOf("_id"), "display_name=?", arrayOf(TITLE_SUBSCRIPTIONS), null)?.use { c ->
                if (c.moveToFirst()) {
                    channelId = c.getLong(0)
                }
            }

            if (channelId == -1L) {
                val cv = ContentValues().apply {
                    put("type", "TYPE_PREVIEW")
                    put("display_name", TITLE_SUBSCRIPTIONS)
                    put("description", "SmartTube Subscriptions")
                    put("package_name", "org.smarttube.stable")
                    put("input_id", "ru.atvhub.tv/.SmartTubeBridge")
                }
                val inserted = cr.insert(channelsUri, cv)
                if (inserted != null) {
                    channelId = ContentUris.parseId(inserted)
                }
            }

            if (channelId != -1L) {
                val programsUri = Uri.parse(PREVIEW_PROGRAM_URI)
                    .buildUpon()
                    .appendQueryParameter("channel", channelId.toString())
                    .build()

                var count = 0
                cr.query(programsUri, arrayOf("_id"), null, null, null)?.use { c ->
                    count = c.count
                }

                if (count == 0) {
                    for (item in getFallbackSubscriptions()) {
                        val cv = ContentValues().apply {
                            put("channel_id", channelId)
                            put("title", item.title)
                            put("poster_art_uri", item.thumbnailUrl)
                            put("intent_uri", "https://www.youtube.com/watch?v=${item.videoId}")
                            put("internal_provider_data", item.videoId)
                        }
                        cr.insert(Uri.parse(PREVIEW_PROGRAM_URI), cv)
                    }
                }
            }
        } catch (_: Exception) {}
    }
}
