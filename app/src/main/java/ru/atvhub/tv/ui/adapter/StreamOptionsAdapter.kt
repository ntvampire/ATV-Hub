package ru.atvhub.tv.ui.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import ru.atvhub.tv.databinding.ItemStreamOptionBinding
import ru.atvhub.tv.model.OnlineStream

class StreamOptionsAdapter(
    private val streams: List<OnlineStream>,
    private val onStreamSelected: (OnlineStream) -> Unit
) : RecyclerView.Adapter<StreamOptionsAdapter.ViewHolder>() {

    inner class ViewHolder(val binding: ItemStreamOptionBinding) : RecyclerView.ViewHolder(binding.root) {
        init {
            binding.root.setOnClickListener {
                val pos = bindingAdapterPosition
                if (pos != RecyclerView.NO_POSITION) {
                    onStreamSelected(streams[pos])
                }
            }

            binding.root.setOnFocusChangeListener { view, hasFocus ->
                view.scaleX = if (hasFocus) 1.02f else 1.0f
                view.scaleY = if (hasFocus) 1.02f else 1.0f
            }
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemStreamOptionBinding.inflate(
            LayoutInflater.from(parent.context),
            parent,
            false
        )
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val stream = streams[position]
        holder.binding.apply {
            tvStreamSource.text = stream.sourceName
            tvStreamAudio.text = stream.audioTrack
            tvStreamQuality.text = stream.quality
        }
    }

    override fun getItemCount(): Int = streams.size
}
