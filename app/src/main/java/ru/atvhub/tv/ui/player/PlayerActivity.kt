package ru.atvhub.tv.ui.player

import android.net.Uri
import android.os.Bundle
import android.view.KeyEvent
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.media3.common.MediaItem
import androidx.media3.datasource.DefaultHttpDataSource
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory
import ru.atvhub.tv.databinding.ActivityPlayerBinding

class PlayerActivity : AppCompatActivity() {

    private lateinit var binding: ActivityPlayerBinding
    private var player: ExoPlayer? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityPlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)

        val streamUrl = intent.getStringExtra("stream_url")
        val streamTitle = intent.getStringExtra("stream_title") ?: "Воспроизведение"
        @Suppress("UNCHECKED_CAST")
        val headers = intent.getSerializableExtra("stream_headers") as? HashMap<String, String>

        initPlayer(streamUrl, headers)
    }

    private fun initPlayer(url: String?, headers: Map<String, String>?) {
        val httpDataSourceFactory = DefaultHttpDataSource.Factory()
            .setAllowCrossProtocolRedirects(true)
            .setUserAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) ATVHub/2.0")

        if (!headers.isNullOrEmpty()) {
            httpDataSourceFactory.setDefaultRequestProperties(headers)
        }

        val mediaSourceFactory = DefaultMediaSourceFactory(this)
            .setDataSourceFactory(httpDataSourceFactory)

        player = ExoPlayer.Builder(this)
            .setMediaSourceFactory(mediaSourceFactory)
            .build()

        binding.playerView.player = player
        binding.playerView.keepScreenOn = true

        if (!url.isNullOrBlank()) {
            val mediaItem = MediaItem.fromUri(Uri.parse(url))
            player?.setMediaItem(mediaItem)
            player?.prepare()
            player?.playWhenReady = true
        } else {
            Toast.makeText(this, "Ошибка: пустой URL потока", Toast.LENGTH_SHORT).show()
            finish()
        }
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        val p = player ?: return super.onKeyDown(keyCode, event)

        when (keyCode) {
            KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER, KeyEvent.KEYCODE_NUMPAD_ENTER, KeyEvent.KEYCODE_SPACE -> {
                if (p.isPlaying) {
                    p.pause()
                } else {
                    p.play()
                }
                return true
            }
            KeyEvent.KEYCODE_DPAD_LEFT -> {
                // Перемотка назад на 10 секунд
                val newPos = (p.currentPosition - 10000L).coerceAtLeast(0L)
                p.seekTo(newPos)
                return true
            }
            KeyEvent.KEYCODE_DPAD_RIGHT -> {
                // Перемотка вперед на 10 секунд
                val dur = p.duration
                val newPos = (p.currentPosition + 10000L).let {
                    if (dur > 0) it.coerceAtMost(dur) else it
                }
                p.seekTo(newPos)
                return true
            }
            KeyEvent.KEYCODE_BACK, KeyEvent.KEYCODE_ESCAPE -> {
                finish()
                return true
            }
        }

        return super.onKeyDown(keyCode, event)
    }

    override fun onPause() {
        super.onPause()
        player?.pause()
    }

    override fun onDestroy() {
        super.onDestroy()
        player?.release()
        player = null
    }
}
