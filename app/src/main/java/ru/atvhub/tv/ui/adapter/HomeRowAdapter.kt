package ru.atvhub.tv.ui.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import ru.atvhub.tv.data.SmartTubeVideo
import ru.atvhub.tv.databinding.ItemHomeRowBinding
import ru.atvhub.tv.model.AppItem
import ru.atvhub.tv.model.HomeRow
import ru.atvhub.tv.model.MediaItem
import ru.atvhub.tv.model.RowType

class HomeRowAdapter(
    private val rows: List<HomeRow>,
    private val onMovieClick: (MediaItem) -> Unit,
    private val onSmartTubeClick: (SmartTubeVideo) -> Unit,
    private val onAppClick: (AppItem) -> Unit
) : RecyclerView.Adapter<HomeRowAdapter.ViewHolder>() {

    inner class ViewHolder(val binding: ItemHomeRowBinding) : RecyclerView.ViewHolder(binding.root)

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemHomeRowBinding.inflate(
            LayoutInflater.from(parent.context),
            parent,
            false
        )
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val row = rows[position]
        holder.binding.apply {
            tvRowTitle.text = row.title

            rvRowItems.layoutManager = LinearLayoutManager(
                root.context,
                LinearLayoutManager.HORIZONTAL,
                false
            )

            when (row.type) {
                RowType.APPS -> {
                    @Suppress("UNCHECKED_CAST")
                    val apps = row.items as? List<AppItem> ?: emptyList()
                    rvRowItems.adapter = AppCardAdapter(apps, onAppClick)
                }
                RowType.SMARTTUBE_SUBS -> {
                    @Suppress("UNCHECKED_CAST")
                    val subs = row.items as? List<SmartTubeVideo> ?: emptyList()
                    rvRowItems.adapter = SmartTubeCardAdapter(subs, onSmartTubeClick)
                }
                RowType.TOP_MOVIES, RowType.TOP_SERIES -> {
                    @Suppress("UNCHECKED_CAST")
                    val movies = row.items as? List<MediaItem> ?: emptyList()
                    rvRowItems.adapter = MovieCardAdapter(movies, showRank = true, onMovieClick)
                }
                else -> {
                    @Suppress("UNCHECKED_CAST")
                    val movies = row.items as? List<MediaItem> ?: emptyList()
                    rvRowItems.adapter = MovieCardAdapter(movies, showRank = false, onMovieClick)
                }
            }
        }
    }

    override fun getItemCount(): Int = rows.size
}
