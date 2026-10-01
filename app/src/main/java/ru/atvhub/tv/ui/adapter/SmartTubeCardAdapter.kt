package ru.atvhub.tv.ui.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import coil.load
import ru.atvhub.tv.data.SmartTubeVideo
import ru.atvhub.tv.databinding.ItemVideoCardBinding

class SmartTubeCardAdapter(
    private val items: List<SmartTubeVideo>,
    private val onItemClick: (SmartTubeVideo) -> Unit
) : RecyclerView.Adapter<SmartTubeCardAdapter.ViewHolder>() {

    inner class ViewHolder(val binding: ItemVideoCardBinding) : RecyclerView.ViewHolder(binding.root) {
        init {
            binding.root.setOnClickListener {
                val position = bindingAdapterPosition
                if (position != RecyclerView.NO_POSITION) {
                    onItemClick(items[position])
                }
            }

            binding.root.setOnFocusChangeListener { view, hasFocus ->
                val scale = if (hasFocus) 1.05f else 1.0f
                view.animate().scaleX(scale).scaleY(scale).setDuration(120).start()
            }
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemVideoCardBinding.inflate(
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
            tvChannel.text = item.channelTitle

            ivThumbnail.load(item.thumbnailUrl) {
                crossfade(false)
            }
        }
    }

    override fun getItemCount(): Int = items.size
}
