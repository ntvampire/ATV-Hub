package ru.atvhub.tv.ui.player

import android.app.AlertDialog
import android.net.Uri
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.view.KeyEvent
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.common.TrackSelectionOverride
import androidx.media3.datasource.DefaultHttpDataSource
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory
import ru.atvhub.tv.R
import ru.atvhub.tv.databinding.ActivityPlayerBinding
import ru.atvhub.tv.model.IptvChannel
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

class PlayerActivity : AppCompatActivity() {

    private lateinit var binding: ActivityPlayerBinding
    private var player: ExoPlayer? = null

    private var isLive: Boolean = false
    private var channelList: List<IptvChannel> = emptyList()
    private var currentChannelIndex: Int = 0

    private val mainHandler = Handler(Looper.getMainLooper())
    private val clockFormat = SimpleDateFormat("HH:mm", Locale.getDefault())

    // Автоскрытие OSD через 4 секунды
    private val hideOsdRunnable = Runnable {
        hideOsd()
    }

    // Скрытие центрального HUD индикатора
    private val hideCenterHudRunnable = Runnable {
        binding.centerActionHud.animate().alpha(0f).setDuration(200).withEndAction {
            binding.centerActionHud.visibility = View.GONE
        }.start()
    }

    // Скрытие HUD ТВ канала
    private val hideLiveHudRunnable = Runnable {
        binding.liveChannelHud.animate().alpha(0f).setDuration(300).withEndAction {
            binding.liveChannelHud.visibility = View.GONE
        }.start()
    }

    // Периодическое обновление таймлайна
    private val updateProgressRunnable = object : Runnable {
        override fun run() {
            updateTimeline()
            mainHandler.postDelayed(this, 500)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityPlayerBinding.inflate(layoutInflater)
        setContentView(binding.root)

        isLive = intent.getBooleanExtra("is_live", false)
        val streamUrl = intent.getStringExtra("stream_url")
        val streamTitle = intent.getStringExtra("stream_title") ?: "Воспроизведение"
        val streamSubtitle = intent.getStringExtra("stream_subtitle") ?: if (isLive) "Прямой эфир" else "Онлайн поток"

        @Suppress("UNCHECKED_CAST")
        val headers = intent.getSerializableExtra("stream_headers") as? HashMap<String, String>

        binding.tvPlayerTitle.text = streamTitle
        binding.tvPlayerSubtitle.text = streamSubtitle
        binding.tvPlayerClock.text = clockFormat.format(Date())

        if (isLive) {
            binding.layoutTimeline.visibility = View.GONE
            binding.btnRewind.visibility = View.GONE
            binding.btnForward.visibility = View.GONE
            @Suppress("UNCHECKED_CAST")
            val list = intent.getSerializableExtra("channel_list") as? ArrayList<IptvChannel>
            if (list != null) {
                channelList = list
            }
            currentChannelIndex = intent.getIntExtra("current_channel_index", 0)
        } else {
            binding.layoutTimeline.visibility = View.VISIBLE
            binding.btnRewind.visibility = View.VISIBLE
            binding.btnForward.visibility = View.VISIBLE
        }

        setupButtons()
        initPlayer(streamUrl, headers)

        if (isLive && channelList.isNotEmpty() && currentChannelIndex in channelList.indices) {
            showChannelHud(channelList[currentChannelIndex])
        }
    }

    private fun setupButtons() {
        // Кнопка Назад в OSD
        binding.btnPlayerBack.setOnClickListener {
            finish()
        }

        // Кнопка Пауза / Старт
        binding.btnPlayPause.setOnClickListener {
            togglePlayPause()
        }

        // Перемотка назад (-10 сек)
        binding.btnRewind.setOnClickListener {
            seekRelative(-10000L)
            showCenterHud(R.drawable.ic_player_rewind, "-10 сек")
        }

        // Перемотка вперед (+10 сек)
        binding.btnForward.setOnClickListener {
            seekRelative(10000L)
            showCenterHud(R.drawable.ic_player_forward, "+10 сек")
        }

        // Выбор аудиодорожки
        binding.btnAudio.setOnClickListener {
            showAudioTrackDialog()
        }

        // Выбор субтитров
        binding.btnSubtitles.setOnClickListener {
            showSubtitleTrackDialog()
        }

        // Фокусные анимации для кнопок управления
        val ctrlButtons = listOf(
            binding.btnPlayerBack,
            binding.btnPrevEpisode,
            binding.btnRewind,
            binding.btnPlayPause,
            binding.btnForward,
            binding.btnNextEpisode,
            binding.btnAudio,
            binding.btnSubtitles
        )

        for (btn in ctrlButtons) {
            btn.setOnFocusChangeListener { v, hasFocus ->
                val scale = if (hasFocus) 1.15f else 1.0f
                v.animate().scaleX(scale).scaleY(scale).setDuration(120).start()
                if (hasFocus) {
                    resetOsdTimeout()
                }
            }
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

        player?.addListener(object : Player.Listener {
            override fun onIsPlayingChanged(isPlaying: Boolean) {
                updatePlayPauseIcon(isPlaying)
            }

            override fun onPlaybackStateChanged(playbackState: Int) {
                if (playbackState == Player.STATE_READY) {
                    updateTimeline()
                }
            }
        })

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

    private fun togglePlayPause() {
        val p = player ?: return
        if (p.isPlaying) {
            p.pause()
            showCenterHud(R.drawable.ic_player_pause, "Пауза")
        } else {
            p.play()
            showCenterHud(R.drawable.ic_player_play, "Воспроизведение")
        }
        updatePlayPauseIcon(p.isPlaying)
        resetOsdTimeout()
    }

    private fun updatePlayPauseIcon(isPlaying: Boolean) {
        val iconRes = if (isPlaying) R.drawable.ic_player_pause else R.drawable.ic_player_play
        binding.btnPlayPause.setImageResource(iconRes)
    }

    private fun seekRelative(offsetMs: Long) {
        val p = player ?: return
        val current = p.currentPosition
        val duration = p.duration
        val target = (current + offsetMs).coerceAtLeast(0L).let {
            if (duration > 0) it.coerceAtMost(duration) else it
        }
        p.seekTo(target)
        updateTimeline()
        resetOsdTimeout()
    }

    private fun updateTimeline() {
        val p = player ?: return
        if (isLive) return

        val current = p.currentPosition.coerceAtLeast(0L)
        val duration = p.duration.coerceAtLeast(0L)

        binding.tvTimeCurrent.text = formatTime(current)
        binding.tvTimeDuration.text = if (duration > 0) formatTime(duration) else "--:--"

        if (duration > 0) {
            val progress = ((current.toFloat() / duration.toFloat()) * 1000).toInt()
            binding.playerSeekBar.progress = progress
        }
    }

    private fun formatTime(millis: Long): String {
        val totalSeconds = millis / 1000
        val seconds = totalSeconds % 60
        val minutes = (totalSeconds / 60) % 60
        val hours = totalSeconds / 3600
        return if (hours > 0) {
            String.format(Locale.getDefault(), "%02d:%02d:%02d", hours, minutes, seconds)
        } else {
            String.format(Locale.getDefault(), "%02d:%02d", minutes, seconds)
        }
    }

    private fun showOsd() {
        mainHandler.removeCallbacks(hideOsdRunnable)
        binding.tvPlayerClock.text = clockFormat.format(Date())
        updateTimeline()
        updatePlayPauseIcon(player?.isPlaying == true)

        binding.osdOverlay.apply {
            alpha = 1f
            visibility = View.VISIBLE
        }
        binding.btnPlayPause.requestFocus()
        mainHandler.postDelayed(hideOsdRunnable, 4000)
    }

    private fun hideOsd() {
        mainHandler.removeCallbacks(hideOsdRunnable)
        binding.osdOverlay.animate().alpha(0f).setDuration(250).withEndAction {
            binding.osdOverlay.visibility = View.GONE
        }.start()
    }

    private fun isOsdVisible(): Boolean = binding.osdOverlay.visibility == View.VISIBLE

    private fun resetOsdTimeout() {
        if (isOsdVisible()) {
            mainHandler.removeCallbacks(hideOsdRunnable)
            mainHandler.postDelayed(hideOsdRunnable, 4000)
        }
    }

    private fun showCenterHud(iconRes: Int, text: String) {
        mainHandler.removeCallbacks(hideCenterHudRunnable)
        binding.centerActionHud.apply {
            alpha = 1f
            visibility = View.VISIBLE
        }
        binding.ivCenterIcon.setImageResource(iconRes)
        binding.tvCenterText.text = text
        mainHandler.postDelayed(hideCenterHudRunnable, 1200)
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
        mainHandler.removeCallbacks(hideLiveHudRunnable)
        binding.liveChannelHud.apply {
            alpha = 1f
            visibility = View.VISIBLE
        }
        binding.tvHudNumber.text = "%02d".format(currentChannelIndex + 1)
        binding.tvHudTitle.text = channel.name
        binding.tvHudProgram.text = channel.currentProgramTitle ?: "Прямой эфир"
        mainHandler.postDelayed(hideLiveHudRunnable, 3500)
    }

    // Выбор звуковой дорожки
    private fun showAudioTrackDialog() {
        val p = player ?: return
        val currentTracks = p.currentTracks
        val audioGroups = currentTracks.groups.filter { it.type == C.TRACK_TYPE_AUDIO }

        if (audioGroups.isEmpty()) {
            Toast.makeText(this, "Нет доступных аудиодорожек", Toast.LENGTH_SHORT).show()
            return
        }

        val trackNames = mutableListOf<String>()
        val trackRefs = mutableListOf<Pair<androidx.media3.common.Tracks.Group, Int>>()
        var selectedIdx = 0

        for (group in audioGroups) {
            for (i in 0 until group.length) {
                val format = group.getTrackFormat(i)
                val lang = format.language?.uppercase() ?: "Неизвестный"
                val label = format.label ?: "Дорожка ${trackNames.size + 1}"
                val title = "$label ($lang)"
                trackNames.add(title)
                trackRefs.add(group to i)
                if (group.isTrackSelected(i)) {
                    selectedIdx = trackNames.size - 1
                }
            }
        }

        AlertDialog.Builder(this)
            .setTitle("Звуковые дорожки")
            .setSingleChoiceItems(trackNames.toTypedArray(), selectedIdx) { dialog, which ->
                val (group, trackIndex) = trackRefs[which]
                p.trackSelectionParameters = p.trackSelectionParameters.buildUpon()
                    .setOverrideForType(TrackSelectionOverride(group.mediaTrackGroup, listOf(trackIndex)))
                    .build()
                Toast.makeText(this, "Выбрано: ${trackNames[which]}", Toast.LENGTH_SHORT).show()
                dialog.dismiss()
                resetOsdTimeout()
            }
            .setNegativeButton("Отмена", null)
            .show()
    }

    // Выбор субтитров
    private fun showSubtitleTrackDialog() {
        val p = player ?: return
        val currentTracks = p.currentTracks
        val subGroups = currentTracks.groups.filter { it.type == C.TRACK_TYPE_TEXT }

        val trackNames = mutableListOf("Отключить")
        val trackRefs = mutableListOf<Pair<androidx.media3.common.Tracks.Group?, Int>>()
        trackRefs.add(null to -1) // Отключено
        var selectedIdx = 0

        for (group in subGroups) {
            for (i in 0 until group.length) {
                val format = group.getTrackFormat(i)
                val lang = format.language?.uppercase() ?: "Субтитры"
                val label = format.label ?: lang
                trackNames.add(label)
                trackRefs.add(group to i)
                if (group.isTrackSelected(i)) {
                    selectedIdx = trackNames.size - 1
                }
            }
        }

        AlertDialog.Builder(this)
            .setTitle("Субтитры")
            .setSingleChoiceItems(trackNames.toTypedArray(), selectedIdx) { dialog, which ->
                if (which == 0) {
                    p.trackSelectionParameters = p.trackSelectionParameters.buildUpon()
                        .setTrackTypeDisabled(C.TRACK_TYPE_TEXT, true)
                        .build()
                    Toast.makeText(this, "Субтитры отключены", Toast.LENGTH_SHORT).show()
                } else {
                    val (group, trackIndex) = trackRefs[which]
                    if (group != null) {
                        p.trackSelectionParameters = p.trackSelectionParameters.buildUpon()
                            .setTrackTypeDisabled(C.TRACK_TYPE_TEXT, false)
                            .setOverrideForType(TrackSelectionOverride(group.mediaTrackGroup, listOf(trackIndex)))
                            .build()
                        Toast.makeText(this, "Выбрано: ${trackNames[which]}", Toast.LENGTH_SHORT).show()
                    }
                }
                dialog.dismiss()
                resetOsdTimeout()
            }
            .setNegativeButton("Отмена", null)
            .show()
    }

    // БЕЗОТКАЗНЫЙ ПЕРЕХВАТ D-PAD И КЛАВИАТУРЫ
    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if (event.action == KeyEvent.ACTION_DOWN) {
            when (event.keyCode) {
                KeyEvent.KEYCODE_BACK, KeyEvent.KEYCODE_ESCAPE, KeyEvent.KEYCODE_BUTTON_B -> {
                    if (isOsdVisible()) {
                        hideOsd()
                        return true
                    }
                    finish()
                    return true
                }

                KeyEvent.KEYCODE_DPAD_CENTER, KeyEvent.KEYCODE_ENTER, KeyEvent.KEYCODE_NUMPAD_ENTER, KeyEvent.KEYCODE_SPACE -> {
                    if (isLive) {
                        if (channelList.isNotEmpty() && currentChannelIndex in channelList.indices) {
                            showChannelHud(channelList[currentChannelIndex])
                        }
                        return true
                    }
                    if (!isOsdVisible()) {
                        togglePlayPause()
                        return true
                    } else {
                        resetOsdTimeout()
                    }
                }

                KeyEvent.KEYCODE_DPAD_LEFT, KeyEvent.KEYCODE_MEDIA_REWIND -> {
                    if (!isLive) {
                        if (!isOsdVisible()) {
                            seekRelative(-10000L)
                            showCenterHud(R.drawable.ic_player_rewind, "-10 сек")
                            return true
                        } else {
                            resetOsdTimeout()
                        }
                    }
                }

                KeyEvent.KEYCODE_DPAD_RIGHT, KeyEvent.KEYCODE_MEDIA_FAST_FORWARD -> {
                    if (!isLive) {
                        if (!isOsdVisible()) {
                            seekRelative(10000L)
                            showCenterHud(R.drawable.ic_player_forward, "+10 сек")
                            return true
                        } else {
                            resetOsdTimeout()
                        }
                    }
                }

                KeyEvent.KEYCODE_DPAD_UP, KeyEvent.KEYCODE_CHANNEL_UP -> {
                    if (isLive) {
                        switchChannel(currentChannelIndex - 1)
                        return true
                    } else {
                        if (!isOsdVisible()) {
                            showOsd()
                            return true
                        } else {
                            resetOsdTimeout()
                        }
                    }
                }

                KeyEvent.KEYCODE_DPAD_DOWN, KeyEvent.KEYCODE_CHANNEL_DOWN -> {
                    if (isLive) {
                        switchChannel(currentChannelIndex + 1)
                        return true
                    } else {
                        if (!isOsdVisible()) {
                            showOsd()
                            return true
                        } else {
                            resetOsdTimeout()
                        }
                    }
                }
            }
        }
        return super.dispatchKeyEvent(event)
    }

    override fun onResume() {
        super.onResume()
        mainHandler.post(updateProgressRunnable)
    }

    override fun onPause() {
        super.onPause()
        mainHandler.removeCallbacks(updateProgressRunnable)
        player?.pause()
    }

    override fun onDestroy() {
        super.onDestroy()
        mainHandler.removeCallbacksAndMessages(null)
        player?.release()
        player = null
    }
}
