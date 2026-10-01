package ru.atvhub.tv.ui.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import ru.atvhub.tv.databinding.ItemTorrentOptionBinding
import ru.atvhub.tv.model.TorrentItem

class TorrentOptionsAdapter(
    private val torrents: List<TorrentItem>,
    private val onTorrentSelected: (TorrentItem) -> Unit
) : RecyclerView.Adapter<TorrentOptionsAdapter.ViewHolder>() {

    inner class ViewHolder(val binding: ItemTorrentOptionBinding) : RecyclerView.ViewHolder(binding.root) {
        init {
            binding.root.setOnClickListener {
                val pos = bindingAdapterPosition
                if (pos != RecyclerView.NO_POSITION) {
                    onTorrentSelected(torrents[pos])
                }
            }

            binding.root.setOnFocusChangeListener { view, hasFocus ->
                view.scaleX = if (hasFocus) 1.02f else 1.0f
                view.scaleY = if (hasFocus) 1.02f else 1.0f
            }
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemTorrentOptionBinding.inflate(
            LayoutInflater.from(parent.context),
            parent,
            false
        )
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val item = torrents[position]
        holder.binding.apply {
            tvTorrentTracker.text = item.tracker
            tvTorrentQuality.text = item.quality
            tvTorrentSize.text = item.sizeReadable
            tvTorrentPeers.text = "↑${item.seeds}  ↓${item.peers}"
            tvTorrentTitle.text = item.title
        }
    }

    override fun getItemCount(): Int = torrents.size
}
