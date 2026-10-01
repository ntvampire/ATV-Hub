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
import ru.atvhub.tv.data.MediaCatalogRepository
import ru.atvhub.tv.data.SmartTubeRepository
import ru.atvhub.tv.databinding.FragmentHomeBinding
import ru.atvhub.tv.model.HomeRow
import ru.atvhub.tv.model.MediaItem
import ru.atvhub.tv.model.RowType
import ru.atvhub.tv.ui.adapter.HomeRowAdapter
import ru.atvhub.tv.ui.details.DetailsActivity

class HomeFragment : Fragment() {

    private var _binding: FragmentHomeBinding? = null
    private val binding get() = _binding!!

    private lateinit var catalogRepo: MediaCatalogRepository
    private lateinit var smartTubeRepo: SmartTubeRepository

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
        catalogRepo = MediaCatalogRepository(requireContext())
        smartTubeRepo = SmartTubeRepository(requireContext())

        binding.rvHomeRows.layoutManager = LinearLayoutManager(requireContext())

        // 1. Быстрая загрузка кэшированных/стартовых данных (без ожидания сети)
        renderInitialData()

        // 2. Фоновое обновление актуальными данными из сети
        loadLiveData()
    }

    private fun renderInitialData() {
        val initialRows = mutableListOf<HomeRow>()

        // 1. Топ-10 фильмов
        val topMovies = catalogRepo.getFallbackTopMovies()
        initialRows.add(
            HomeRow(
                id = "row_top_movies",
                title = getString(R.string.row_top_movies),
                type = RowType.TOP_MOVIES,
                items = topMovies
            )
        )

        // 2. Топ-10 сериалов
        val topSeries = catalogRepo.getFallbackTopSeries()
        initialRows.add(
            HomeRow(
                id = "row_top_series",
                title = getString(R.string.row_top_series),
                type = RowType.TOP_SERIES,
                items = topSeries
            )
        )

        // 3. Подписки SmartTube (строго после Топ-10)
        viewLifecycleOwner.lifecycleScope.launch {
            val subs = smartTubeRepo.getSubscriptions()
            if (subs.isNotEmpty()) {
                val updatedRows = getCurrentRows().toMutableList()
                val insertIdx = updatedRows.indexOfFirst { it.type == RowType.TOP_SERIES }
                    .takeIf { it >= 0 }?.plus(1) ?: 2

                val existingSubIdx = updatedRows.indexOfFirst { it.type == RowType.SMARTTUBE_SUBS }
                if (existingSubIdx >= 0) {
                    updatedRows[existingSubIdx] = HomeRow(
                        id = "row_smarttube_subs",
                        title = getString(R.string.row_smarttube_subs),
                        type = RowType.SMARTTUBE_SUBS,
                        items = subs
                    )
                } else {
                    val targetIdx = insertIdx.coerceAtMost(updatedRows.size)
                    updatedRows.add(
                        targetIdx,
                        HomeRow(
                            id = "row_smarttube_subs",
                            title = getString(R.string.row_smarttube_subs),
                            type = RowType.SMARTTUBE_SUBS,
                            items = subs
                        )
                    )
                }
                updateAdapter(updatedRows)
            }
        }

        // 4. Цифровой релиз
        val digitalReleases = catalogRepo.getFallbackDigitalReleases()
        initialRows.add(
            HomeRow(
                id = "row_digital",
                title = getString(R.string.row_movies_digital),
                type = RowType.MOVIES_DIGITAL,
                items = digitalReleases
            )
        )

        updateAdapter(initialRows)
    }

    private var currentRowsList: List<HomeRow> = emptyList()

    private fun getCurrentRows(): List<HomeRow> = currentRowsList

    private fun updateAdapter(rows: List<HomeRow>) {
        currentRowsList = rows
        binding.rvHomeRows.adapter = HomeRowAdapter(
            rows = rows,
            onMovieClick = { movie ->
                val intent = Intent(requireContext(), DetailsActivity::class.java).apply {
                    putExtra("media_item", movie)
                }
                startActivity(intent)
            },
            onSmartTubeClick = { video ->
                smartTubeRepo.launchVideo(video)
            },
            onAppClick = { app ->
                val launchIntent = requireContext().packageManager.getLaunchIntentForPackage(app.packageName)
                if (launchIntent != null) {
                    startActivity(launchIntent)
                }
            }
        )
    }

    private fun loadLiveData() {
        viewLifecycleOwner.lifecycleScope.launch {
            try {
                val liveMovies = catalogRepo.getTopMoviesWeek()
                val liveSeries = catalogRepo.getTopSeriesWeek()
                val liveDigital = catalogRepo.getDigitalReleases()
                val livePopular = catalogRepo.getPopularMovies()
                val subs = smartTubeRepo.getSubscriptions()

                val rows = mutableListOf<HomeRow>()

                // 1. Топ-10 фильмов
                if (liveMovies.isNotEmpty()) {
                    rows.add(
                        HomeRow(
                            id = "row_top_movies",
                            title = getString(R.string.row_top_movies),
                            type = RowType.TOP_MOVIES,
                            items = liveMovies
                        )
                    )
                }

                // 2. Топ-10 сериалов
                if (liveSeries.isNotEmpty()) {
                    rows.add(
                        HomeRow(
                            id = "row_top_series",
                            title = getString(R.string.row_top_series),
                            type = RowType.TOP_SERIES,
                            items = liveSeries
                        )
                    )
                }

                // 3. Подписки SmartTube (строго после Топ-10)
                if (subs.isNotEmpty()) {
                    rows.add(
                        HomeRow(
                            id = "row_smarttube_subs",
                            title = getString(R.string.row_smarttube_subs),
                            type = RowType.SMARTTUBE_SUBS,
                            items = subs
                        )
                    )
                }

                // 4. Цифровой релиз
                if (liveDigital.isNotEmpty()) {
                    rows.add(
                        HomeRow(
                            id = "row_digital",
                            title = getString(R.string.row_movies_digital),
                            type = RowType.MOVIES_DIGITAL,
                            items = liveDigital
                        )
                    )
                }

                // 5. Популярное кино
                if (livePopular.isNotEmpty()) {
                    rows.add(
                        HomeRow(
                            id = "row_popular",
                            title = getString(R.string.row_movies_new),
                            type = RowType.NEW_EPISODES,
                            items = livePopular
                        )
                    )
                }

                if (rows.isNotEmpty()) {
                    updateAdapter(rows)
                }
            } catch (_: Exception) {}
        }
    }

    fun requestInitialFocus() {
        binding.rvHomeRows.post {
            binding.rvHomeRows.requestFocus()
            val firstHolder = binding.rvHomeRows.findViewHolderForAdapterPosition(0)
            firstHolder?.itemView?.findViewById<View>(R.id.rv_row_items)?.requestFocus()
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
