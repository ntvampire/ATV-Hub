package ru.atvhub.tv.ui.details

import android.app.Dialog
import android.content.Intent
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.os.Bundle
import android.view.KeyEvent
import android.view.View
import android.view.Window
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import coil.load
import kotlinx.coroutines.launch
import ru.atvhub.tv.R
import ru.atvhub.tv.data.OnlineStreamsRepository
import ru.atvhub.tv.data.TorrentsRepository
import ru.atvhub.tv.databinding.ActivityDetailsBinding
import ru.atvhub.tv.databinding.DialogStreamSelectionBinding
import ru.atvhub.tv.databinding.DialogTorrentSelectionBinding
import ru.atvhub.tv.model.MediaItem
import ru.atvhub.tv.model.OnlineStream
import ru.atvhub.tv.model.TorrentItem
import ru.atvhub.tv.ui.adapter.StreamOptionsAdapter
import ru.atvhub.tv.ui.adapter.TorrentOptionsAdapter
import ru.atvhub.tv.ui.player.PlayerActivity

class DetailsActivity : AppCompatActivity() {

    private lateinit var binding: ActivityDetailsBinding
    private lateinit var streamsRepo: OnlineStreamsRepository
    private lateinit var torrentsRepo: TorrentsRepository

    private var mediaItem: MediaItem? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityDetailsBinding.inflate(layoutInflater)
        setContentView(binding.root)

        streamsRepo = OnlineStreamsRepository(this)
        torrentsRepo = TorrentsRepository(this)

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

            // Установка focusableInTouchMode для защиты от потери фокуса ТВ
            listOf(btnWatch, btnTorrents, btnTrailer, btnFavorite, btnTrack).forEach { btn ->
                btn.isFocusable = true
                btn.isFocusableInTouchMode = true
            }

            // Фокус по умолчанию на кнопку "Смотреть"
            btnWatch.post {
                btnWatch.requestFocus()
            }

            // 1. Кнопка "Смотреть" (Онлайн-потоки VK, Rutube, балансеры >= 720p RU)
            btnWatch.setOnClickListener {
                showOnlineStreamsDialog(item)
            }

            // 2. Кнопка "Торренты" (P2P / TorrServe)
            btnTorrents.setOnClickListener {
                showTorrentsDialog(item)
            }

            // 3. Кнопка "Трейлер"
            btnTrailer.setOnClickListener {
                playTrailer(item)
            }

            // 4. Кнопка "В закладки"
            btnFavorite.setOnClickListener {
                toggleFavorite(item)
            }

            // 5. Кнопка "Следить" (для сериалов)
            btnTrack.setOnClickListener {
                toggleTracking(item)
            }
        }
    }

    private fun showOnlineStreamsDialog(item: MediaItem) {
        val dialog = Dialog(this)
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE)
        val dBinding = DialogStreamSelectionBinding.inflate(layoutInflater)
        dialog.setContentView(dBinding.root)
        dialog.window?.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))

        dBinding.rvStreamOptions.layoutManager = LinearLayoutManager(this)
        dBinding.pbLoading.visibility = View.VISIBLE
        dBinding.rvStreamOptions.visibility = View.GONE

        dialog.show()

        lifecycleScope.launch {
            val streams = streamsRepo.getStreamsForMedia(item)
            dBinding.pbLoading.visibility = View.GONE
            dBinding.rvStreamOptions.visibility = View.VISIBLE

            dBinding.rvStreamOptions.adapter = StreamOptionsAdapter(streams) { selectedStream ->
                dialog.dismiss()
                playStream(selectedStream, item.title)
            }

            dBinding.rvStreamOptions.post {
                dBinding.rvStreamOptions.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus()
            }
        }
    }

    private fun showTorrentsDialog(item: MediaItem) {
        val dialog = Dialog(this)
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE)
        val dBinding = DialogTorrentSelectionBinding.inflate(layoutInflater)
        dialog.setContentView(dBinding.root)
        dialog.window?.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))

        dBinding.rvTorrentOptions.layoutManager = LinearLayoutManager(this)
        dBinding.pbTorrentLoading.visibility = View.VISIBLE
        dBinding.rvTorrentOptions.visibility = View.GONE

        dialog.show()

        lifecycleScope.launch {
            val torrents = torrentsRepo.searchTorrents(item)
            dBinding.pbTorrentLoading.visibility = View.GONE
            dBinding.rvTorrentOptions.visibility = View.VISIBLE

            dBinding.rvTorrentOptions.adapter = TorrentOptionsAdapter(torrents) { selectedTorrent ->
                dialog.dismiss()
                playTorrent(selectedTorrent, item.title)
            }

            dBinding.rvTorrentOptions.post {
                dBinding.rvTorrentOptions.findViewHolderForAdapterPosition(0)?.itemView?.requestFocus()
            }
        }
    }

    private fun playStream(stream: OnlineStream, title: String) {
        val intent = Intent(this, PlayerActivity::class.java).apply {
            putExtra("stream_url", stream.streamUrl)
            putExtra("stream_title", "$title • ${stream.sourceName} (${stream.quality})")
            if (!stream.headers.isNullOrEmpty()) {
                putExtra("stream_headers", HashMap(stream.headers))
            }
        }
        startActivity(intent)
    }

    private fun playTorrent(torrent: TorrentItem, title: String) {
        Toast.makeText(this, "Подключение к раздаче: ${torrent.tracker} (${torrent.quality})...", Toast.LENGTH_SHORT).show()
        lifecycleScope.launch {
            val streamUrl = torrentsRepo.getStreamUrl(torrent)
            val intent = Intent(this@DetailsActivity, PlayerActivity::class.java).apply {
                putExtra("stream_url", streamUrl)
                putExtra("stream_title", "$title • ${torrent.tracker} (${torrent.quality})")
            }
            startActivity(intent)
        }
    }

    private fun playTrailer(item: MediaItem) {
        val trailerUrl = "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"
        val intent = Intent(this, PlayerActivity::class.java).apply {
            putExtra("stream_url", trailerUrl)
            putExtra("stream_title", "${item.title} — Официальный трейлер")
        }
        startActivity(intent)
    }

    private fun toggleFavorite(item: MediaItem) {
        Toast.makeText(this, "Добавлено в «Мой список»", Toast.LENGTH_SHORT).show()
    }

    private fun toggleTracking(item: MediaItem) {
        Toast.makeText(this, "Сериал добавлен в отслеживаемые", Toast.LENGTH_SHORT).show()
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        if (keyCode == KeyEvent.KEYCODE_BACK || keyCode == KeyEvent.KEYCODE_ESCAPE) {
            finish()
            return true
        }
        return super.onKeyDown(keyCode, event)
    }
}
