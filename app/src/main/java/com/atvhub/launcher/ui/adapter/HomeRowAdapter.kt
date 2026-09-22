package com.atvhub.launcher.ui.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.atvhub.launcher.databinding.ItemHomeRowBinding
import com.atvhub.launcher.model.AppItem
import com.atvhub.launcher.model.HomeRow
import com.atvhub.launcher.model.MediaItem
import com.atvhub.launcher.model.RowType

class HomeRowAdapter(
    private val rows: List<HomeRow>,
    private val onMovieClick: (MediaItem) -> Unit,
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
                else -> {
                    @Suppress("UNCHECKED_CAST")
                    val movies = row.items as? List<MediaItem> ?: emptyList()
                    rvRowItems.adapter = MovieCardAdapter(movies, onMovieClick)
                }
            }
        }
    }

    override fun getItemCount(): Int = rows.size
}
