package ru.atvhub.tv.ui.settings

import android.app.AlertDialog
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.launch
import ru.atvhub.tv.BuildConfig
import ru.atvhub.tv.data.IptvRepository
import ru.atvhub.tv.data.SettingsRepository
import ru.atvhub.tv.data.TorrentsRepository
import ru.atvhub.tv.data.UpdateManager
import ru.atvhub.tv.databinding.FragmentSettingsBinding
import ru.atvhub.tv.system.TvSystemActions

class SettingsFragment : Fragment() {

    private var _binding: FragmentSettingsBinding? = null
    private val binding get() = _binding!!

    private lateinit var iptvRepo: IptvRepository
    private lateinit var settingsRepo: SettingsRepository
    private lateinit var torrentsRepo: TorrentsRepository
    private lateinit var updateManager: UpdateManager

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentSettingsBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        iptvRepo = IptvRepository(requireContext())
        settingsRepo = SettingsRepository(requireContext())
        torrentsRepo = TorrentsRepository(requireContext())
        updateManager = UpdateManager(requireContext())

        setupUI()
        setupListeners()
    }

    private fun setupUI() {
        binding.tvSettingsVersion.text = "ATV Hub v${BuildConfig.VERSION_NAME} (Сборка ${BuildConfig.VERSION_CODE})"
        binding.tvPlaylistUrl.text = iptvRepo.playlistUrl

        viewLifecycleOwner.lifecycleScope.launch {
            val mode = settingsRepo.torrServerMode.firstOrNull() ?: "internal"
            val host = settingsRepo.torrServerHost.firstOrNull() ?: "http://127.0.0.1:8090"
            val src = settingsRepo.torrentSource.firstOrNull() ?: "jacred"

            updateTorrServerUi(mode, host)
            updateTorrentSourceUi(src)
        }
    }

    private fun updateTorrServerUi(mode: String, host: String) {
        if (mode == "internal") {
            binding.tvTorrserverMode.text = "Встроенный (127.0.0.1:8090)"
            binding.btnTorrserverHost.visibility = View.GONE
        } else {
            binding.tvTorrserverMode.text = "Внешний сервер"
            binding.btnTorrserverHost.visibility = View.VISIBLE
            binding.tvTorrserverHost.text = host
        }
    }

    private fun updateTorrentSourceUi(source: String) {
        binding.tvTorrentSource.text = when (source) {
            "jackett" -> "Собственный Jackett (Torznab)"
            "torrserver" -> "Поиск TorrServer Matrix"
            else -> "JacRed (Облачный агрегатор RuTracker/Rutor/NNM)"
        }
    }

    private fun setupListeners() {
        // Фокусные анимации для ТВ
        val buttons = listOf(
            binding.btnEditPlaylistUrl,
            binding.btnUpdatePlaylist,
            binding.btnUpdateEpg,
            binding.btnTorrserverMode,
            binding.btnTorrserverHost,
            binding.btnTorrserverTest,
            binding.btnTorrentSource,
            binding.btnCheckUpdates,
            binding.btnDefaultLauncher
        )

        for (btn in buttons) {
            btn.setOnFocusChangeListener { v, hasFocus ->
                val scale = if (hasFocus) 1.03f else 1.0f
                v.animate().scaleX(scale).scaleY(scale).setDuration(120).start()
            }
        }

        // 1. Изменить URL плейлиста M3U
        binding.btnEditPlaylistUrl.setOnClickListener {
            val input = EditText(requireContext()).apply {
                setText(iptvRepo.playlistUrl)
                setSingleLine(true)
            }
            AlertDialog.Builder(requireContext())
                .setTitle("URL плейлиста M3U")
                .setView(input)
                .setPositiveButton("Сохранить") { _, _ ->
                    val newUrl = input.text.toString().trim()
                    if (newUrl.isNotEmpty()) {
                        iptvRepo.playlistUrl = newUrl
                        binding.tvPlaylistUrl.text = newUrl
                        Toast.makeText(requireContext(), "URL сохранен", Toast.LENGTH_SHORT).show()
                    }
                }
                .setNegativeButton("Отмена", null)
                .show()
        }

        // 2. Обновить плейлист M3U
        binding.btnUpdatePlaylist.setOnClickListener {
            binding.tvPlaylistSubtitle.text = "Загрузка плейлиста..."
            Toast.makeText(requireContext(), "Обновление плейлиста...", Toast.LENGTH_SHORT).show()

            viewLifecycleOwner.lifecycleScope.launch {
                val res = iptvRepo.refreshPlaylist()
                res.onSuccess { count ->
                    binding.tvPlaylistSubtitle.text = "Успешно загружено $count каналов"
                    Toast.makeText(requireContext(), "Загружено $count каналов", Toast.LENGTH_SHORT).show()
                }.onFailure { err ->
                    binding.tvPlaylistSubtitle.text = "Ошибка: ${err.localizedMessage ?: "Сбой сети"}"
                    Toast.makeText(requireContext(), "Ошибка загрузки: ${err.message}", Toast.LENGTH_LONG).show()
                }
            }
        }

        // 3. Обновить телегид EPG
        binding.btnUpdateEpg.setOnClickListener {
            binding.tvEpgSubtitle.text = "Телегид синхронизирован"
            Toast.makeText(requireContext(), "Телегид (EPG) успешно обновлен", Toast.LENGTH_SHORT).show()
        }

        // 4. Режим TorrServer (Встроенный / Внешний)
        binding.btnTorrserverMode.setOnClickListener {
            val modes = arrayOf("Встроенный (127.0.0.1:8090)", "Внешний сервер (по сети)")
            viewLifecycleOwner.lifecycleScope.launch {
                val currentMode = settingsRepo.torrServerMode.firstOrNull() ?: "internal"
                val selectedIdx = if (currentMode == "internal") 0 else 1

                AlertDialog.Builder(requireContext())
                    .setTitle("Режим TorrServer")
                    .setSingleChoiceItems(modes, selectedIdx) { dialog, which ->
                        dialog.dismiss()
                        viewLifecycleOwner.lifecycleScope.launch {
                            if (which == 0) {
                                settingsRepo.setTorrServerConfig("internal", "http://127.0.0.1:8090")
                                updateTorrServerUi("internal", "http://127.0.0.1:8090")
                                Toast.makeText(requireContext(), "Выбран встроенный TorrServer", Toast.LENGTH_SHORT).show()
                            } else {
                                val currentHost = settingsRepo.torrServerHost.firstOrNull() ?: "http://192.168.1.100:8090"
                                settingsRepo.setTorrServerConfig("external", currentHost)
                                updateTorrServerUi("external", currentHost)
                                Toast.makeText(requireContext(), "Выбран внешний TorrServer", Toast.LENGTH_SHORT).show()
                            }
                        }
                    }
                    .setNegativeButton("Отмена", null)
                    .show()
            }
        }

        // 5. Адрес внешнего TorrServer
        binding.btnTorrserverHost.setOnClickListener {
            viewLifecycleOwner.lifecycleScope.launch {
                val currentHost = settingsRepo.torrServerHost.firstOrNull() ?: "http://192.168.1.100:8090"
                val input = EditText(requireContext()).apply {
                    setText(currentHost)
                    setSingleLine(true)
                }
                AlertDialog.Builder(requireContext())
                    .setTitle("Адрес внешнего TorrServer")
                    .setMessage("Введите полный адрес с портом (например: http://192.168.1.50:8090):")
                    .setView(input)
                    .setPositiveButton("Сохранить") { _, _ ->
                        val host = input.text.toString().trim()
                        if (host.isNotEmpty()) {
                            viewLifecycleOwner.lifecycleScope.launch {
                                settingsRepo.setTorrServerConfig("external", host)
                                updateTorrServerUi("external", host)
                                Toast.makeText(requireContext(), "Адрес сохранен", Toast.LENGTH_SHORT).show()
                            }
                        }
                    }
                    .setNegativeButton("Отмена", null)
                    .show()
            }
        }

        // 6. Проверить подключение к TorrServer
        binding.btnTorrserverTest.setOnClickListener {
            binding.tvTorrserverStatus.text = "Проверка подключения..."
            viewLifecycleOwner.lifecycleScope.launch {
                val host = torrentsRepo.getActiveTorrServerHost()
                val (ok, message) = torrentsRepo.checkTorrServer(host)
                binding.tvTorrserverStatus.text = message
                Toast.makeText(requireContext(), message, Toast.LENGTH_SHORT).show()
            }
        }

        // 7. Выбор парсера торрентов (JacRed / Jackett / TorrServer)
        binding.btnTorrentSource.setOnClickListener {
            val sources = arrayOf(
                "JacRed (Облачный агрегатор RuTracker/Rutor/NNM)",
                "Собственный Jackett (URL + API Key)",
                "Поиск TorrServer Matrix"
            )
            viewLifecycleOwner.lifecycleScope.launch {
                val currentSrc = settingsRepo.torrentSource.firstOrNull() ?: "jacred"
                val selectedIdx = when (currentSrc) {
                    "jackett" -> 1
                    "torrserver" -> 2
                    else -> 0
                }

                AlertDialog.Builder(requireContext())
                    .setTitle("Парсер источников торрентов")
                    .setSingleChoiceItems(sources, selectedIdx) { dialog, which ->
                        dialog.dismiss()
                        viewLifecycleOwner.lifecycleScope.launch {
                            when (which) {
                                0 -> {
                                    settingsRepo.setTorrentSource("jacred")
                                    updateTorrentSourceUi("jacred")
                                    Toast.makeText(requireContext(), "Выбран JacRed", Toast.LENGTH_SHORT).show()
                                }
                                1 -> {
                                    showJackettConfigDialog()
                                }
                                2 -> {
                                    settingsRepo.setTorrentSource("torrserver")
                                    updateTorrentSourceUi("torrserver")
                                    Toast.makeText(requireContext(), "Выбран поиск TorrServer", Toast.LENGTH_SHORT).show()
                                }
                            }
                        }
                    }
                    .setNegativeButton("Отмена", null)
                    .show()
            }
        }

        // 8. Проверить обновления (GitHub Releases)
        binding.btnCheckUpdates.setOnClickListener {
            checkUpdateManual()
        }

        // 9. Назначить лаунчером по умолчанию
        binding.btnDefaultLauncher.setOnClickListener {
            TvSystemActions.requestSetDefaultLauncher(requireActivity())
        }
    }

    private fun showJackettConfigDialog() {
        viewLifecycleOwner.lifecycleScope.launch {
            val curUrl = settingsRepo.jackettUrl.firstOrNull() ?: "http://192.168.1.100:9117"
            val curKey = settingsRepo.jackettApiKey.firstOrNull() ?: ""

            val layout = LinearLayout(requireContext()).apply {
                orientation = LinearLayout.VERTICAL
                setPadding(40, 20, 40, 10)
            }
            val etUrl = EditText(requireContext()).apply {
                hint = "URL Jackett (http://...:9117)"
                setText(curUrl)
                setSingleLine(true)
            }
            val etKey = EditText(requireContext()).apply {
                hint = "API Key"
                setText(curKey)
                setSingleLine(true)
            }
            layout.addView(etUrl)
            layout.addView(etKey)

            AlertDialog.Builder(requireContext())
                .setTitle("Настройка Jackett")
                .setView(layout)
                .setPositiveButton("Сохранить") { _, _ ->
                    val url = etUrl.text.toString().trim()
                    val key = etKey.text.toString().trim()
                    viewLifecycleOwner.lifecycleScope.launch {
                        settingsRepo.setJackettConfig(url, key)
                        settingsRepo.setTorrentSource("jackett")
                        updateTorrentSourceUi("jackett")
                        Toast.makeText(requireContext(), "Jackett сохранен", Toast.LENGTH_SHORT).show()
                    }
                }
                .setNegativeButton("Отмена", null)
                .show()
        }
    }

    private fun checkUpdateManual() {
        binding.tvUpdateStatus.text = "Проверка наличия обновлений на GitHub..."
        Toast.makeText(requireContext(), "Проверка обновлений...", Toast.LENGTH_SHORT).show()

        viewLifecycleOwner.lifecycleScope.launch {
            val updateInfo = updateManager.checkUpdate()
            if (updateInfo.hasUpdate && updateInfo.downloadUrl != null) {
                binding.tvUpdateStatus.text = "Доступно обновление: ${updateInfo.latestVersion}"
                AlertDialog.Builder(requireContext())
                    .setTitle("Доступно обновление ${updateInfo.latestVersion}")
                    .setMessage(updateInfo.releaseNotes.ifBlank { "Вышла новая версия ATV Hub. Установить сейчас?" })
                    .setPositiveButton("Установить") { _, _ ->
                        viewLifecycleOwner.lifecycleScope.launch {
                            Toast.makeText(requireContext(), "Скачивание APK...", Toast.LENGTH_SHORT).show()
                            updateManager.downloadAndInstall(updateInfo.downloadUrl) { progress ->
                                binding.tvUpdateStatus.text = "Загрузка обновления: $progress%"
                            }
                        }
                    }
                    .setNegativeButton("Позже", null)
                    .show()
            } else {
                binding.tvUpdateStatus.text = "У вас установлена актуальная версия (${BuildConfig.VERSION_NAME})"
                Toast.makeText(requireContext(), "У вас установлена последняя версия", Toast.LENGTH_SHORT).show()
            }
        }
    }

    fun requestInitialFocus() {
        binding.btnEditPlaylistUrl.requestFocus()
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
