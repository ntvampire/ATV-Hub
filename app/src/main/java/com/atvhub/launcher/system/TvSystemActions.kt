package com.atvhub.launcher.system

import android.app.Activity
import android.app.role.RoleManager
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.media.tv.TvInputManager
import android.net.Uri
import android.os.Build
import android.provider.Settings
import android.widget.Toast
import com.atvhub.launcher.R

object TvSystemActions {

    fun openDeviceSettings(context: Context) {
        val intents = listOf(
            Intent("android.settings.LEANBACK_SETTINGS"),
            Intent(Settings.ACTION_SETTINGS)
        )
        for (intent in intents) {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            if (intent.resolveActivity(context.packageManager) != null) {
                context.startActivity(intent)
                return
            }
        }
        Toast.makeText(context, context.getString(R.string.action_device_settings), Toast.LENGTH_SHORT).show()
    }

    fun openNetworkSettings(context: Context) {
        val intents = listOf(
            Intent(Settings.ACTION_WIFI_SETTINGS),
            Intent(Settings.ACTION_WIRELESS_SETTINGS),
            Intent(Settings.ACTION_SETTINGS)
        )
        for (intent in intents) {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            if (intent.resolveActivity(context.packageManager) != null) {
                context.startActivity(intent)
                return
            }
        }
    }

    fun openHdmiInputs(context: Context) {
        try {
            val tvInputManager = context.getSystemService(Context.TV_INPUT_SERVICE) as? TvInputManager
            val inputList = tvInputManager?.tvInputList

            // Попытка найти внешний HDMI ввод
            val hdmiInput = inputList?.firstOrNull {
                it.type == TvInputManager.INPUT_TYPE_HDMI || it.isPassthroughInput
            }

            if (hdmiInput != null) {
                val intent = Intent(Intent.ACTION_VIEW).apply {
                    data = Uri.parse("content://android.media.tv/passthrough/${hdmiInput.id}")
                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                }
                context.startActivity(intent)
                return
            }
        } catch (_: Exception) {
        }

        // Альтернативный запуск системного селектора входов
        val generalIntent = Intent(Intent.ACTION_VIEW, Uri.parse("content://android.media.tv/channel"))
        generalIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        if (generalIntent.resolveActivity(context.packageManager) != null) {
            context.startActivity(generalIntent)
        } else {
            Toast.makeText(context, context.getString(R.string.action_hdmi_inputs), Toast.LENGTH_SHORT).show()
        }
    }

    fun isDefaultLauncher(context: Context): Boolean {
        val intent = Intent(Intent.ACTION_MAIN).apply {
            addCategory(Intent.CATEGORY_HOME)
        }
        val resolveInfo = context.packageManager.resolveActivity(intent, PackageManager.MATCH_DEFAULT_ONLY)
        return resolveInfo?.activityInfo?.packageName == context.packageName
    }

    fun requestSetDefaultLauncher(activity: Activity) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            val roleManager = activity.getSystemService(RoleManager::class.java)
            if (roleManager != null && roleManager.isRoleAvailable(RoleManager.ROLE_HOME)) {
                if (!roleManager.isRoleHeld(RoleManager.ROLE_HOME)) {
                    val roleIntent = roleManager.createRequestRoleIntent(RoleManager.ROLE_HOME)
                    activity.startActivityForResult(roleIntent, 1001)
                    return
                }
            }
        }

        // Для Android 9 (API 28) вызываем системный переключатель
        try {
            val homeIntent = Intent(Settings.ACTION_HOME_SETTINGS).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            if (homeIntent.resolveActivity(activity.packageManager) != null) {
                activity.startActivity(homeIntent)
                return
            }
        } catch (_: Exception) {
        }

        // Показ селектора домашнего экрана
        val selectorIntent = Intent(Intent.ACTION_MAIN).apply {
            addCategory(Intent.CATEGORY_HOME)
            flags = Intent.FLAG_ACTIVITY_NEW_TASK
        }
        activity.startActivity(Intent.createChooser(selectorIntent, activity.getString(R.string.dialog_set_default_home_title)))
    }
}
