package com.atvhub.launcher.ui.details

import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import coil.load
import com.atvhub.launcher.R
import com.atvhub.launcher.databinding.ActivityDetailsBinding
import com.atvhub.launcher.model.MediaItem

class DetailsActivity : AppCompatActivity() {

    private lateinit var binding: ActivityDetailsBinding
    private var mediaItem: MediaItem? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityDetailsBinding.inflate(layoutInflater)
        setContentView(binding.root)

        @Suppress("DEPRECATION")
        mediaItem = intent.getSerializableExtra("media_item") as? MediaItem

        mediaItem?.let { setupUi(it) } ?: finish()
    }

    private fun setupUi(item: MediaItem) {
        binding.apply {
            tvDetailTitle.text = item.title
            tvDetailDesc.text = item.description ?: ""

            val metaText = buildString {
                if (item.year > 0) append(item.year)
                if (item.ratingKp > 0f) {
                    if (isNotEmpty()) append(" • ")
                    append("КП ").append(String.format("%.1f", item.ratingKp))
                }
                if (item.genres.isNotEmpty()) {
                    if (isNotEmpty()) append(" • ")
                    append(item.genres.joinToString(", "))
                }
            }
            tvDetailMeta.text = metaText

            if (!item.qualityBadge.isNullOrBlank()) {
                tvDetailQuality.text = item.qualityBadge
                tvDetailQuality.visibility = View.VISIBLE
            } else {
                tvDetailQuality.visibility = View.GONE
            }

            ivDetailPoster.load(item.posterUrl) {
                crossfade(false)
            }

            btnTrack.visibility = if (item.isSeries) View.VISIBLE else View.GONE

            // Фокус по умолчанию на кнопку "Смотреть"
            btnWatch.requestFocus()

            btnWatch.setOnClickListener {
                Toast.makeText(this@DetailsActivity, "Поиск онлайн-потоков 720p+...", Toast.LENGTH_SHORT).show()
            }

            btnTorrents.setOnClickListener {
                Toast.makeText(this@DetailsActivity, "Поиск торрентов (JacRed)...", Toast.LENGTH_SHORT).show()
            }

            btnTrailer.setOnClickListener {
                Toast.makeText(this@DetailsActivity, "Запуск трейлера...", Toast.LENGTH_SHORT).show()
            }

            btnFavorite.setOnClickListener {
                val isFav = item.isFavorite
                btnFavorite.text = if (!isFav) getString(R.string.btn_remove_favorite) else getString(R.string.btn_add_favorite)
                Toast.makeText(this@DetailsActivity, if (!isFav) "Добавлено в избранное" else "Удалено из избранного", Toast.LENGTH_SHORT).show()
            }

            btnTrack.setOnClickListener {
                val isTracked = item.isTracked
                btnTrack.text = if (!isTracked) getString(R.string.btn_untrack_series) else getString(R.string.btn_track_series)
                Toast.makeText(this@DetailsActivity, if (!isTracked) "Сериал отслеживается" else "Отслеживание отключено", Toast.LENGTH_SHORT).show()
            }
        }
    }
}
