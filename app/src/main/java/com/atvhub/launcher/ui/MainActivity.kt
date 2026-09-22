package com.atvhub.launcher.ui

import android.app.AlertDialog
import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.atvhub.launcher.R
import com.atvhub.launcher.data.SettingsRepository
import com.atvhub.launcher.data.UpdateManager
import com.atvhub.launcher.databinding.ActivityMainBinding
import com.atvhub.launcher.model.AppItem
import com.atvhub.launcher.model.HomeRow
import com.atvhub.launcher.model.MediaItem
import com.atvhub.launcher.model.RowType
import com.atvhub.launcher.system.TvSystemActions
import com.atvhub.launcher.ui.adapter.HomeRowAdapter
import com.atvhub.launcher.ui.details.DetailsActivity
import com.atvhub.launcher.ui.settings.SettingsActivity
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private lateinit var settingsRepository: SettingsRepository
    private lateinit var updateManager: UpdateManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        settingsRepository = SettingsRepository(this)
        updateManager = UpdateManager(this)

        setupTopBar()
        setupRows()
        checkDefaultLauncherPrompt()
        checkForUpdatesInBackground()
    }

    private fun setupTopBar() {
        binding.btnNetwork.setOnClickListener {
            TvSystemActions.openNetworkSettings(this)
        }

        binding.btnHdmi.setOnClickListener {
            TvSystemActions.openHdmiInputs(this)
        }

        binding.btnDeviceSettings.setOnClickListener {
            TvSystemActions.openDeviceSettings(this)
        }
    }

    private fun setupRows() {
        binding.rvHomeRows.layoutManager = LinearLayoutManager(this)

        lifecycleScope.launch {
            val apps = settingsRepository.getInstalledLeanbackApps()

            val demoMovies = listOf(
                MediaItem(
                    id = "movie_1",
                    title = "Дюна: Часть вторая",
                    originalTitle = "Dune: Part Two",
                    year = 2024,
                    ratingKp = 8.5f,
                    qualityBadge = "4K HDR",
                    genres = listOf("Фантастика", "Приключения"),
                    description = "Герцог Пол Атрейдес присоединяется к племени фрименов, чтобы отомстить заговорщикам, уничтожившим его семью."
                ),
                MediaItem(
                    id = "movie_2",
                    title = "Оппенгеймер",
                    originalTitle = "Oppenheimer",
                    year = 2023,
                    ratingKp = 8.2f,
                    qualityBadge = "1080p WEB-DL",
                    genres = listOf("Биография", "Драма"),
                    description = "История жизни американского физика-теоретика Роберта Оппенгеймера, руководившего Манхэттенским проектом."
                ),
                MediaItem(
                    id = "movie_3",
                    title = "Майор Гром: Игра",
                    year = 2024,
                    ratingKp = 7.9f,
                    qualityBadge = "1080p WEB-DL",
                    genres = listOf("Боевик", "Детектив"),
                    description = "Майор Игорь Гром сталкивается с загадочным злодеем по прозвищу Призрак."
                )
            )

            val demoSeries = listOf(
                MediaItem(
                    id = "series_1",
                    title = "Сегун",
                    originalTitle = "Shogun",
                    year = 2024,
                    ratingKp = 8.8f,
                    qualityBadge = "4K WEB-DL",
                    isSeries = true,
                    genres = listOf("Драма", "История"),
                    description = "Английский штурман Джон Блэкторн терпит крушение у берегов средневековой Японии."
                ),
                MediaItem(
                    id = "series_2",
                    title = "Фоллаут",
                    originalTitle = "Fallout",
                    year = 2024,
                    ratingKp = 8.1f,
                    qualityBadge = "1080p WEB-DL",
                    isSeries = true,
                    genres = listOf("Фантастика", "Боевик"),
                    description = "Спустя 200 лет после ядерного апокалипсиса жители уютного убежища вынуждены выйти на поверхность."
                )
            )

            val rows = listOf(
                HomeRow("row_apps", RowType.APPS, getString(R.string.row_apps), items = apps),
                HomeRow("row_movies", RowType.MOVIES_DIGITAL, getString(R.string.row_movies_digital), items = demoMovies),
                HomeRow("row_series", RowType.SERIES_DIGITAL, getString(R.string.row_series_digital), items = demoSeries)
            )

            val adapter = HomeRowAdapter(
                rows = rows,
                onMovieClick = { movie -> openMovieDetails(movie) },
                onAppClick = { app -> launchApp(app) }
            )
            binding.rvHomeRows.adapter = adapter
        }
    }

    private fun openMovieDetails(mediaItem: MediaItem) {
        val intent = Intent(this, DetailsActivity::class.java).apply {
            putExtra("media_item", mediaItem)
        }
        startActivity(intent)
    }

    private fun launchApp(app: AppItem) {
        val launchIntent = packageManager.getLaunchIntentForPackage(app.packageName)
        if (launchIntent != null) {
            startActivity(launchIntent)
        } else {
            Toast.makeText(this, app.label, Toast.LENGTH_SHORT).show()
        }
    }

    private fun checkDefaultLauncherPrompt() {
        lifecycleScope.launch {
            val alreadyAsked = settingsRepository.askedDefaultHome.first()
            if (!alreadyAsked && !TvSystemActions.isDefaultLauncher(this@MainActivity)) {
                AlertDialog.Builder(this@MainActivity)
                    .setTitle(R.string.dialog_set_default_home_title)
                    .setMessage(R.string.dialog_set_default_home_desc)
                    .setPositiveButton(R.string.btn_set_as_default) { _, _ ->
                        lifecycleScope.launch {
                            settingsRepository.setAskedDefaultHome(true)
                            TvSystemActions.requestSetDefaultLauncher(this@MainActivity)
                        }
                    }
                    .setNegativeButton(R.string.btn_later) { _, _ ->
                        lifecycleScope.launch {
                            settingsRepository.setAskedDefaultHome(true)
                        }
                    }
                    .show()
            }
        }
    }

    private fun checkForUpdatesInBackground() {
        lifecycleScope.launch {
            val updateInfo = updateManager.checkUpdate()
            if (updateInfo.hasUpdate && updateInfo.downloadUrl != null) {
                AlertDialog.Builder(this@MainActivity)
                    .setTitle(getString(R.string.update_available_title, updateInfo.latestVersion))
                    .setMessage(updateInfo.releaseNotes.ifBlank { getString(R.string.update_available_title, updateInfo.latestVersion) })
                    .setPositiveButton(R.string.update_btn_install) { _, _ ->
                        lifecycleScope.launch {
                            Toast.makeText(this@MainActivity, "Скачивание обновления...", Toast.LENGTH_SHORT).show()
                            updateManager.downloadAndInstall(updateInfo.downloadUrl) { progress ->
                                // Прогресс
                            }
                        }
                    }
                    .setNegativeButton(R.string.btn_later, null)
                    .show()
            }
        }
    }
}
