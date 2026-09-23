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

    fun showInputsDialog(activity: Activity) {
        try {
            val tvInputManager = activity.getSystemService(Context.TV_INPUT_SERVICE) as? TvInputManager
            val inputList = tvInputManager?.tvInputList?.filter { !it.isHidden(activity) } ?: emptyList()

            if (inputList.isNotEmpty()) {
                val inputNames = mutableListOf<String>()
                val inputs = mutableListOf<android.media.tv.TvInputInfo>()

                for (input in inputList) {
                    val label = try {
                        input.loadLabel(activity)?.toString()
                    } catch (_: Exception) {
                        null
                    }

                    val typeLabel = when (input.type) {
                        android.media.tv.TvInputInfo.TYPE_HDMI -> "HDMI"
                        android.media.tv.TvInputInfo.TYPE_TUNER -> "ТВ / Антенна"
                        android.media.tv.TvInputInfo.TYPE_COMPONENT -> "Компонент"
                        android.media.tv.TvInputInfo.TYPE_COMPOSITE -> "AV"
                        android.media.tv.TvInputInfo.TYPE_DISPLAY_PORT -> "DisplayPort"
                        else -> "Вход"
                    }

                    val displayName = if (!label.isNullOrBlank()) {
                        "$typeLabel: $label"
                    } else {
                        val simpleId = input.id.substringAfterLast('.')
                        "$typeLabel ($simpleId)"
                    }

                    inputNames.add(displayName)
                    inputs.add(input)
                }

                if (inputs.isNotEmpty()) {
                    android.app.AlertDialog.Builder(activity)
                        .setTitle(R.string.dialog_select_input_title)
                        .setItems(inputNames.toTypedArray()) { _, which ->
                            val selected = inputs[which]
                            try {
                                val uri = if (selected.isPassthroughInput) {
                                    Uri.parse("content://android.media.tv/passthrough/${selected.id}")
                                } else {
                                    android.media.tv.TvContract.buildChannelUriForPassthroughInput(selected.id)
                                        ?: Uri.parse("content://android.media.tv/passthrough/${selected.id}")
                                }
                                val intent = Intent(Intent.ACTION_VIEW, uri).apply {
                                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                                }
                                activity.startActivity(intent)
                            } catch (e: Exception) {
                                e.printStackTrace()
                            }
                        }
                        .setNegativeButton(R.string.btn_cancel, null)
                        .show()
                    return
                }
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }

        // Запасной запуск системного селектора входов
        val generalIntent = Intent(Intent.ACTION_VIEW, Uri.parse("content://android.media.tv/channel")).apply {
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        if (generalIntent.resolveActivity(activity.packageManager) != null) {
            activity.startActivity(generalIntent)
        } else {
            Toast.makeText(activity, activity.getString(R.string.input_not_found), Toast.LENGTH_SHORT).show()
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
