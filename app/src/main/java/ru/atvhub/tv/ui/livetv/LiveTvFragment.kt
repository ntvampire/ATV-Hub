package ru.atvhub.tv.ui.livetv

import android.content.Intent
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.os.Bundle
import android.util.TypedValue
import android.view.Gravity
import android.view.KeyEvent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import kotlinx.coroutines.launch
import ru.atvhub.tv.R
import ru.atvhub.tv.data.IptvRepository
import ru.atvhub.tv.databinding.FragmentLivetvBinding
import ru.atvhub.tv.model.IptvChannel
import ru.atvhub.tv.ui.adapter.IptvChannelAdapter
import ru.atvhub.tv.ui.player.PlayerActivity
import java.util.ArrayList

class LiveTvFragment : Fragment() {

    private var _binding: FragmentLivetvBinding? = null
    private val binding get() = _binding!!

    private lateinit var iptvRepository: IptvRepository
    private var allChannels: List<IptvChannel> = emptyList()
    private var filteredChannels: List<IptvChannel> = emptyList()
    private var selectedCategory: String = "Все"
    private var channelAdapter: IptvChannelAdapter? = null

    private val categories = listOf(
        "Все",
        "Общие",
        "Кино",
        "Спорт",
        "Развлекательные",
        "Информационные",
        "Детские",
        "Музыка"
    )

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentLivetvBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        iptvRepository = IptvRepository(requireContext())

        setupRecyclerView()
        setupCategories()
        loadChannels()
    }

    private fun setupRecyclerView() {
        binding.recyclerChannels.layoutManager = LinearLayoutManager(requireContext())
        channelAdapter = IptvChannelAdapter(filteredChannels) { channel, index ->
            openLivePlayer(channel, index)
        }
        binding.recyclerChannels.adapter = channelAdapter
    }

    private fun setupCategories() {
        val container = binding.containerCategories
        container.removeAllViews()

        for (cat in categories) {
            val chip = TextView(requireContext()).apply {
                text = cat
                textSize = 13f
                isFocusable = true
                isFocusableInTouchMode = true
                gravity = Gravity.CENTER
                setPadding(dp(14), dp(8), dp(14), dp(8))

                val lp = ViewGroup.MarginLayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT
                ).apply {
                    marginEnd = dp(10)
                }
                layoutParams = lp
            }

            updateChipVisuals(chip, cat == selectedCategory, hasFocus = false)

            chip.setOnFocusChangeListener { _, hasFocus ->
                updateChipVisuals(chip, cat == selectedCategory, hasFocus)
            }

            chip.setOnClickListener {
                if (selectedCategory != cat) {
                    selectedCategory = cat
                    setupCategories()
                    filterChannels()
                }
            }

            chip.setOnKeyListener { _, keyCode, event ->
                if (event.action == KeyEvent.ACTION_DOWN && keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
                    val firstChannel = binding.recyclerChannels.layoutManager?.findViewByPosition(0)
                    if (firstChannel != null) {
                        firstChannel.requestFocus()
                        return@setOnKeyListener true
                    }
                }
                false
            }

            container.addView(chip)
        }
    }

    private fun updateChipVisuals(chip: TextView, isSelected: Boolean, hasFocus: Boolean) {
        val bg = GradientDrawable().apply {
            cornerRadius = dp(8).toFloat()
            if (hasFocus) {
                setColor(Color.parseColor("#2E1B4E"))
                setStroke(dp(2), Color.parseColor("#7C4DFF"))
            } else if (isSelected) {
                setColor(Color.parseColor("#1E2433"))
                setStroke(dp(1), Color.parseColor("#7C4DFF"))
            } else {
                setColor(Color.parseColor("#151922"))
                setStroke(dp(1), Color.parseColor("#232A38"))
            }
        }
        chip.background = bg
        chip.setTextColor(
            if (hasFocus || isSelected) Color.parseColor("#F1F5F9") else Color.parseColor("#94A3B8")
        )
        val scale = if (hasFocus) 1.05f else 1.0f
        chip.scaleX = scale
        chip.scaleY = scale
    }

    private fun loadChannels() {
        binding.progressLoading.visibility = View.VISIBLE
        binding.tvEmpty.visibility = View.GONE

        viewLifecycleOwner.lifecycleScope.launch {
            allChannels = iptvRepository.getChannels()
            binding.progressLoading.visibility = View.GONE
            binding.tvChannelCount.text = "${allChannels.size} каналов"
            filterChannels()
        }
    }

    private fun matchesCategory(channel: IptvChannel, cat: String): Boolean {
        if (cat == "Все") return true
        val g = channel.groupTitle.lowercase()
        val n = channel.name.lowercase()
        return when (cat) {
            "Общие" -> g.contains("общие") || g.contains("general") || g.contains("undefined") || g.isEmpty() ||
                    n.contains("первый") || n.contains("россия") || n.contains("нтв") || n.contains("твц") || n.contains("отр")
            "Кино" -> g.contains("кино") || g.contains("movie") || g.contains("film") || g.contains("cinema") || g.contains("series") ||
                    n.contains("кино") || n.contains("cinema") || n.contains("film") || n.contains("сериал")
            "Спорт" -> g.contains("спорт") || g.contains("sport") || n.contains("матч") || n.contains("спорт") || n.contains("sport")
            "Развлекательные" -> g.contains("развлека") || g.contains("entertainment") || g.contains("comedy") ||
                    n.contains("стс") || n.contains("тнт") || n.contains("пятница") || n.contains("суббота") || n.contains("2x2")
            "Информационные" -> g.contains("информ") || g.contains("новост") || g.contains("news") ||
                    n.contains("24") || n.contains("новости") || n.contains("известия") || n.contains("рбк")
            "Детские" -> g.contains("детск") || g.contains("kids") || g.contains("children") || g.contains("animat") ||
                    n.contains("карусель") || n.contains("мульт") || n.contains("детский") || n.contains("disney")
            "Музыка" -> g.contains("музык") || g.contains("music") ||
                    n.contains("муз") || n.contains("music") || n.contains("hit") || n.contains("radio")
            else -> g.contains(cat.lowercase()) || n.contains(cat.lowercase())
        }
    }

    private fun filterChannels() {
        filteredChannels = allChannels.filter { matchesCategory(it, selectedCategory) }
        channelAdapter?.submitList(filteredChannels)
        binding.tvEmpty.visibility = if (filteredChannels.isEmpty()) View.VISIBLE else View.GONE
    }

    private fun openLivePlayer(channel: IptvChannel, index: Int) {
        val intent = Intent(requireContext(), PlayerActivity::class.java).apply {
            putExtra("stream_url", channel.streamUrl)
            putExtra("stream_title", channel.name)
            putExtra("is_live", true)
            putExtra("current_channel_index", index)
            putExtra("channel_list", ArrayList(filteredChannels))
        }
        startActivity(intent)
    }

    fun requestInitialFocus() {
        val firstCategory = binding.containerCategories.getChildAt(0)
        firstCategory?.requestFocus() ?: binding.recyclerChannels.requestFocus()
    }

    private fun dp(value: Int): Int {
        return TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP,
            value.toFloat(),
            resources.displayMetrics
        ).toInt()
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
