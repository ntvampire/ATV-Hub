package com.atvhub.launcher.ui.settings

import android.app.AlertDialog
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.atvhub.launcher.BuildConfig
import com.atvhub.launcher.R
import com.atvhub.launcher.data.UpdateManager
import com.atvhub.launcher.databinding.ActivitySettingsBinding
import com.atvhub.launcher.system.TvSystemActions
import kotlinx.coroutines.launch

class SettingsActivity : AppCompatActivity() {

    private lateinit var binding: ActivitySettingsBinding
    private lateinit var updateManager: UpdateManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySettingsBinding.inflate(layoutInflater)
        setContentView(binding.root)

        updateManager = UpdateManager(this)

        binding.tvAppVersion.text = "ATV Hub v${BuildConfig.VERSION_NAME} (Build ${BuildConfig.VERSION_CODE})"

        binding.btnSettingsUpdate.setOnClickListener {
            checkUpdateManual()
        }

        binding.btnSettingsDefaultHome.setOnClickListener {
            TvSystemActions.requestSetDefaultLauncher(this)
        }
    }

    private fun checkUpdateManual() {
        Toast.makeText(this, "Проверка обновлений...", Toast.LENGTH_SHORT).show()
        lifecycleScope.launch {
            val updateInfo = updateManager.checkUpdate()
            if (updateInfo.hasUpdate && updateInfo.downloadUrl != null) {
                AlertDialog.Builder(this@SettingsActivity)
                    .setTitle(getString(R.string.update_available_title, updateInfo.latestVersion))
                    .setMessage(updateInfo.releaseNotes.ifBlank { getString(R.string.update_available_title, updateInfo.latestVersion) })
                    .setPositiveButton(R.string.update_btn_install) { _, _ ->
                        lifecycleScope.launch {
                            Toast.makeText(this@SettingsActivity, "Скачивание обновления...", Toast.LENGTH_SHORT).show()
                            updateManager.downloadAndInstall(updateInfo.downloadUrl) { progress ->
                                // Прогресс
                            }
                        }
                    }
                    .setNegativeButton(R.string.btn_later, null)
                    .show()
            } else {
                Toast.makeText(this@SettingsActivity, R.string.update_up_to_date, Toast.LENGTH_SHORT).show()
            }
        }
    }
}
