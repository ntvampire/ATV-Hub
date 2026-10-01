package ru.atvhub.tv.ui.adapter

import android.graphics.Color
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import coil.load
import ru.atvhub.tv.databinding.ItemIptvChannelBinding
import ru.atvhub.tv.model.IptvChannel

class IptvChannelAdapter(
    private var channels: List<IptvChannel>,
    private val onChannelClick: (IptvChannel, Int) -> Unit
) : RecyclerView.Adapter<IptvChannelAdapter.ViewHolder>() {

    inner class ViewHolder(val binding: ItemIptvChannelBinding) : RecyclerView.ViewHolder(binding.root) {
        init {
            binding.root.setOnClickListener {
                val position = bindingAdapterPosition
                if (position != RecyclerView.NO_POSITION) {
                    onChannelClick(channels[position], position)
                }
            }

            binding.root.setOnFocusChangeListener { view, hasFocus ->
                val scale = if (hasFocus) 1.02f else 1.0f
                view.animate().scaleX(scale).scaleY(scale).setDuration(120).start()
                binding.tvChannelName.setTextColor(
                    if (hasFocus) Color.parseColor("#FFFFFF") else Color.parseColor("#F1F5F9")
                )
            }
        }
    }

    fun submitList(newList: List<IptvChannel>) {
        channels = newList
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemIptvChannelBinding.inflate(
            LayoutInflater.from(parent.context),
            parent,
            false
        )
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val channel = channels[position]
        holder.binding.apply {
            tvChannelNumber.text = "%02d".format(position + 1)
            tvChannelName.text = channel.name
            tvChannelCategory.text = channel.groupTitle
            tvCurrentProgram.text = channel.currentProgramTitle ?: "Прямой эфир"

            if (!channel.logoUrl.isNullOrEmpty()) {
                ivChannelLogo.visibility = View.VISIBLE
                ivChannelIconFallback.visibility = View.GONE
                ivChannelLogo.load(channel.logoUrl) {
                    crossfade(true)
                }
            } else {
                ivChannelLogo.visibility = View.GONE
                ivChannelIconFallback.visibility = View.VISIBLE
            }
        }
    }

    override fun getItemCount(): Int = channels.size
}
