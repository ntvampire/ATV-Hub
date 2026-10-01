package ru.atvhub.tv.ui.player

import android.net.Uri
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.KeyEvent
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.media3.common.MediaItem
import androidx.media3.datasource.DefaultHttpDataSource
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory
import ru.atvhub.tv.databinding.ActivityPlayerBinding
import ru.atvhub.tv.model.IptvChannel

class PlayerActivity : AppCompatActivity() {

    private lateinit var binding: ActivityPlayerBinding
    private var player: ExoPlayer? = null

    private var isLive: Boolean = false
    private var channelList: List<IptvChannel> = emptyList()
    private var currentChannelIndex: Int = 0
    private val hudHandler = Handler(Looper.getMainLooper())
    private val hideHudRunnable = Runnable {
        binding.liveChannelHud.animate().alpha(0f).setDuration(300).withEndAction {
            binding.liveChannelHud.visibility = View.GONE
        }.start()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityPlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)

        isLive = intent.getBooleanExtra("is_live", false)
        val streamUrl = intent.getStringExtra("stream_url")
        val streamTitle = intent.getStringExtra("stream_title") ?: "Воспроизведение"
        @Suppress("UNCHECKED_CAST")
        val headers = intent.getSerializableExtra("stream_headers") as? HashMap<String, String>

        if (isLive) {
            @Suppress("UNCHECKED_CAST")
            val list = intent.getSerializableExtra("channel_list") as? ArrayList<IptvChannel>
            if (list != null) {
                channelList = list
            }
            currentChannelIndex = intent.getIntExtra("current_channel_index", 0)
        }

        initPlayer(streamUrl, headers)

        if (isLive && channelList.isNotEmpty() && currentChannelIndex in channelList.indices) {
            showChannelHud(channelList[currentChannelIndex])
        }
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

        playUrl(url)
    }

    private fun playUrl(url: String?) {
        if (!url.isNullOrBlank()) {
            val mediaItem = MediaItem.fromUri(Uri.parse(url))
            player?.setMediaItem(mediaItem)
            player?.prepare()
            player?.playWhenReady = true
        } else {
            Toast.makeText(this, "Ошибка: пустой URL потока", Toast.LENGTH_SHORT).show()
        }
    }

    private fun switchChannel(newIndex: Int) {
        if (channelList.isEmpty()) return
        currentChannelIndex = when {
            newIndex >= channelList.size -> 0
            newIndex < 0 -> channelList.size - 1
            else -> newIndex
        }
        val channel = channelList[currentChannelIndex]
        showChannelHud(channel)
        playUrl(channel.streamUrl)
    }

    private fun showChannelHud(channel: IptvChannel) {
        hudHandler.removeCallbacks(hideHudRunnable)
        binding.liveChannelHud.apply {
            alpha = 1f
            visibility = View.VISIBLE
        }
        binding.tvHudNumber.text = "%02d".format(currentChannelIndex + 1)
        binding.tvHudTitle.text = channel.name
        binding.tvHudProgram.text = channel.currentProgramTitle ?: "Прямой эфир"

        hudHandler.postDelayed(hideHudRunnable, 3500)
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        val p = player ?: return super.onKeyDown(keyCode, event)

        if (isLive && channelList.isNotEmpty()) {
            when (keyCode) {
                KeyEvent.KEYCODE_DPAD_UP, KeyEvent.KEYCODE_CHANNEL_UP -> {
                    switchChannel(currentChannelIndex - 1)
                    return true
                }
                KeyEvent.KEYCODE_DPAD_DOWN, KeyEvent.KEYCODE_CHANNEL_DOWN -> {
                    switchChannel(currentChannelIndex + 1)
                    return true
                }
                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER, KeyEvent.KEYCODE_NUMPAD_ENTER -> {
                    showChannelHud(channelList[currentChannelIndex])
                    return true
                }
            }
        }

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
                if (!isLive) {
                    val newPos = (p.currentPosition - 10000L).coerceAtLeast(0L)
                    p.seekTo(newPos)
                    return true
                }
            }
            KeyEvent.KEYCODE_DPAD_RIGHT -> {
                if (!isLive) {
                    val dur = p.duration
                    val newPos = (p.currentPosition + 10000L).let {
                        if (dur > 0) it.coerceAtMost(dur) else it
                    }
                    p.seekTo(newPos)
                    return true
                }
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
        hudHandler.removeCallbacks(hideHudRunnable)
        player?.release()
        player = null
    }
}
