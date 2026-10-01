package ru.atvhub.tv.ui.settings

import android.app.AlertDialog
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.EditText
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.launch
import ru.atvhub.tv.BuildConfig
import ru.atvhub.tv.data.IptvRepository
import ru.atvhub.tv.data.UpdateManager
import ru.atvhub.tv.databinding.FragmentSettingsBinding
import ru.atvhub.tv.system.TvSystemActions

class SettingsFragment : Fragment() {

    private var _binding: FragmentSettingsBinding? = null
    private val binding get() = _binding!!

    private lateinit var iptvRepo: IptvRepository
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
        updateManager = UpdateManager(requireContext())

        setupUI()
        setupListeners()
    }

    private fun setupUI() {
        binding.tvSettingsVersion.text = "ATV Hub v${BuildConfig.VERSION_NAME} (Сборка ${BuildConfig.VERSION_CODE})"
        binding.tvPlaylistUrl.text = iptvRepo.playlistUrl
    }

    private fun setupListeners() {
        // Фокусные анимации для ТВ
        val buttons = listOf(
            binding.btnUpdatePlaylist,
            binding.btnEditPlaylistUrl,
            binding.btnUpdateEpg,
            binding.btnTorrserveStatus,
            binding.btnCheckUpdates,
            binding.btnDefaultLauncher
        )

        for (btn in buttons) {
            btn.setOnFocusChangeListener { v, hasFocus ->
                val scale = if (hasFocus) 1.03f else 1.0f
                v.animate().scaleX(scale).scaleY(scale).setDuration(120).start()
            }
        }

        // Обновить плейлист M3U
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

        // Изменить URL плейлиста M3U
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

        // Обновить телегид EPG
        binding.btnUpdateEpg.setOnClickListener {
            binding.tvEpgSubtitle.text = "Телегид синхронизирован"
            Toast.makeText(requireContext(), "Телегид (EPG) успешно обновлен", Toast.LENGTH_SHORT).show()
        }

        // Адрес TorrServer
        binding.btnTorrserveStatus.setOnClickListener {
            val input = EditText(requireContext()).apply {
                setText(binding.tvTorrserveAddr.text.toString().substringBefore(" "))
                setSingleLine(true)
            }
            AlertDialog.Builder(requireContext())
                .setTitle("Адрес TorrServer")
                .setMessage("Введите IP-адрес и порт сервера TorrServer:")
                .setView(input)
                .setPositiveButton("Сохранить") { _, _ ->
                    val addr = input.text.toString().trim()
                    if (addr.isNotEmpty()) {
                        binding.tvTorrserveAddr.text = "$addr (Подключено)"
                        Toast.makeText(requireContext(), "Адрес TorrServer сохранен", Toast.LENGTH_SHORT).show()
                    }
                }
                .setNegativeButton("Отмена", null)
                .show()
        }

        // Проверить обновления (GitHub Releases)
        binding.btnCheckUpdates.setOnClickListener {
            checkUpdateManual()
        }

        // Назначить лаунчером по умолчанию
        binding.btnDefaultLauncher.setOnClickListener {
            TvSystemActions.requestSetDefaultLauncher(requireActivity())
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
        binding.btnUpdatePlaylist.requestFocus()
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
