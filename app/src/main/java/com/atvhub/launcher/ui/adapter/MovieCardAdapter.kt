package com.atvhub.launcher.ui.adapter

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import coil.load
import com.atvhub.launcher.databinding.ItemMovieCardBinding
import com.atvhub.launcher.model.MediaItem

class MovieCardAdapter(
    private val items: List<MediaItem>,
    private val onItemClick: (MediaItem) -> Unit
) : RecyclerView.Adapter<MovieCardAdapter.ViewHolder>() {

    inner class ViewHolder(val binding: ItemMovieCardBinding) : RecyclerView.ViewHolder(binding.root) {
        init {
            binding.root.setOnClickListener {
                val position = bindingAdapterPosition
                if (position != RecyclerView.NO_POSITION) {
                    onItemClick(items[position])
                }
            }

            // Масштабирование при фокусе для четкого восприятия на ТВ без тяжелых анимаций
            binding.root.setOnFocusChangeListener { view, hasFocus ->
                val scale = if (hasFocus) 1.04f else 1.0f
                view.animate().scaleX(scale).scaleY(scale).setDuration(120).start()
            }
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemMovieCardBinding.inflate(
            LayoutInflater.from(parent.context),
            parent,
            false
        )
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val item = items[position]
        holder.binding.apply {
            tvTitle.text = item.title

            val subtitleText = buildString {
                if (item.year > 0) append(item.year)
                if (item.genres.isNotEmpty()) {
                    if (isNotEmpty()) append(" • ")
                    append(item.genres.first())
                }
            }
            tvSubtitle.text = subtitleText
            tvSubtitle.visibility = if (subtitleText.isNotEmpty()) View.VISIBLE else View.GONE

            if (!item.qualityBadge.isNullOrEmpty()) {
                tvQualityBadge.text = item.qualityBadge
                tvQualityBadge.visibility = View.VISIBLE
            } else {
                tvQualityBadge.visibility = View.GONE
            }

            if (item.ratingKp > 0f) {
                tvRatingBadge.text = String.format("%.1f", item.ratingKp)
                tvRatingBadge.visibility = View.VISIBLE
            } else if (item.ratingImdb > 0f) {
                tvRatingBadge.text = String.format("%.1f", item.ratingImdb)
                tvRatingBadge.visibility = View.VISIBLE
            } else {
                tvRatingBadge.visibility = View.GONE
            }

            if (item.totalDurationMs > 0 && item.resumePositionMs > 0) {
                pbWatchProgress.progress = ((item.resumePositionMs * 100) / item.totalDurationMs).toInt()
                pbWatchProgress.visibility = View.VISIBLE
            } else {
                pbWatchProgress.visibility = View.GONE
            }

            ivPoster.load(item.posterUrl) {
                crossfade(false)
            }
        }
    }

    override fun getItemCount(): Int = items.size
}
