package ru.atvhub.tv.ui.home

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import kotlinx.coroutines.launch
import ru.atvhub.tv.R
import ru.atvhub.tv.data.SettingsRepository
import ru.atvhub.tv.databinding.FragmentHomeBinding
import ru.atvhub.tv.model.HomeRow
import ru.atvhub.tv.model.MediaItem
import ru.atvhub.tv.model.RowType
import ru.atvhub.tv.ui.adapter.HomeRowAdapter
import ru.atvhub.tv.ui.details.DetailsActivity

class HomeFragment : Fragment() {

    private var _binding: FragmentHomeBinding? = null
    private val binding get() = _binding!!
    private lateinit var settingsRepository: SettingsRepository

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentHomeBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        settingsRepository = SettingsRepository(requireContext())

        binding.rvHomeRows.layoutManager = LinearLayoutManager(requireContext())

        loadHomeData()
    }

    private fun loadHomeData() {
        viewLifecycleOwner.lifecycleScope.launch {
            val topMovies = listOf(
                MediaItem(
                    id = "top_1",
                    title = "Унабомбер",
                    year = 2026,
                    ratingKp = 6.2f,
                    qualityBadge = "1080p",
                    genres = listOf("Триллер"),
                    description = "История поисков Теда Качинского."
                ),
                MediaItem(
                    id = "top_2",
                    title = "Гипотеза любви",
                    year = 2026,
                    ratingKp = 7.0f,
                    qualityBadge = "1080p",
                    genres = listOf("Мелодрама"),
                    description = "Романтическая комедия об аспирантке."
                ),
                MediaItem(
                    id = "top_3",
                    title = "Один последний выстрел",
                    year = 2026,
                    ratingKp = 5.1f,
                    qualityBadge = "4K HDR",
                    genres = listOf("Боевик"),
                    description = "Бывший спецагент спасает заложников."
                ),
                MediaItem(
                    id = "top_4",
                    title = "Диггер",
                    year = 2026,
                    ratingKp = 6.5f,
                    qualityBadge = "1080p",
                    genres = listOf("Приключения"),
                    description = "Экспедиция в подземные катакомбы."
                )
            )

            val topSeries = listOf(
                MediaItem(
                    id = "series_1",
                    title = "Фонари",
                    year = 2026,
                    ratingKp = 7.8f,
                    qualityBadge = "1080p",
                    genres = listOf("Драма", "Детектив"),
                    description = "Расследование загадочного преступления в сердце Америки."
                ),
                MediaItem(
                    id = "series_2",
                    title = "Гангстерленд",
                    year = 2026,
                    ratingKp = 8.3f,
                    qualityBadge = "4K HDR",
                    genres = listOf("Криминал"),
                    description = "Война преступных синдикатов за контроль над городом."
                ),
                MediaItem(
                    id = "series_3",
                    title = "Футурама",
                    year = 2026,
                    ratingKp = 8.5f,
                    qualityBadge = "1080p",
                    genres = listOf("Мультфильм", "Комедия"),
                    description = "Новые приключения команды Межпланетного экспресса."
                ),
                MediaItem(
                    id = "series_4",
                    title = "Монстр: История Лиззи Борден",
                    year = 2026,
                    ratingKp = 7.7f,
                    qualityBadge = "1080p",
                    genres = listOf("Биография", "Триллер"),
                    description = "Мрачная драма о печально известном преступлении."
                )
            )

            val digitalReleases = listOf(
                MediaItem(
                    id = "digital_1",
                    title = "На краю Оук-стрит",
                    year = 2026,
                    ratingKp = 6.3f,
                    qualityBadge = "1080p",
                    genres = listOf("Фантастика"),
                    description = "Таинственные явления в тихом американском пригороде."
                ),
                MediaItem(
                    id = "digital_2",
                    title = "Моана 2",
                    year = 2024,
                    ratingKp = 7.2f,
                    qualityBadge = "4K HDR",
                    genres = listOf("Мультфильм", "Приключения"),
                    description = "Моана отправляется в новое опасное плавание по дальним морям Океании."
                )
            )

            val rows = mutableListOf<HomeRow>()
            rows.add(HomeRow(id = "row_top_movies", title = getString(R.string.row_top_movies), type = RowType.TOP_MOVIES, items = topMovies))
            rows.add(HomeRow(id = "row_top_series", title = getString(R.string.row_top_series), type = RowType.TOP_SERIES, items = topSeries))
            rows.add(HomeRow(id = "row_digital", title = getString(R.string.row_movies_digital), type = RowType.MOVIES_DIGITAL, items = digitalReleases))

            binding.rvHomeRows.adapter = HomeRowAdapter(
                rows = rows,
                onMovieClick = { movie ->
                    val intent = Intent(requireContext(), DetailsActivity::class.java).apply {
                        putExtra("media_item", movie)
                    }
                    startActivity(intent)
                },
                onAppClick = { app ->
                    val launchIntent = requireContext().packageManager.getLaunchIntentForPackage(app.packageName)
                    if (launchIntent != null) {
                        startActivity(launchIntent)
                    }
                }
            )
        }
    }

    fun requestInitialFocus() {
        binding.rvHomeRows.requestFocus()
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
