package ru.atvhub.tv.ui.adapter

import android.graphics.Color
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import ru.atvhub.tv.databinding.ItemAppCardBinding
import ru.atvhub.tv.model.AppItem

class AppCardAdapter(
    private val apps: List<AppItem>,
    private val onAppClick: (AppItem) -> Unit
) : RecyclerView.Adapter<AppCardAdapter.ViewHolder>() {

    inner class ViewHolder(val binding: ItemAppCardBinding) : RecyclerView.ViewHolder(binding.root) {
        init {
            binding.root.setOnClickListener {
                val position = bindingAdapterPosition
                if (position != RecyclerView.NO_POSITION) {
                    onAppClick(apps[position])
                }
            }

            binding.root.setOnFocusChangeListener { view, hasFocus ->
                val scale = if (hasFocus) 1.05f else 1.0f
                view.animate().scaleX(scale).scaleY(scale).setDuration(120).start()
                binding.tvAppLabel.setTextColor(
                    if (hasFocus) Color.parseColor("#F1F5F9") else Color.parseColor("#94A3B8")
                )
            }
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemAppCardBinding.inflate(
            LayoutInflater.from(parent.context),
            parent,
            false
        )
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val app = apps[position]
        holder.binding.apply {
            tvAppLabel.text = app.label

            if (app.banner != null) {
                ivAppBanner.setImageDrawable(app.banner)
                ivAppBanner.visibility = View.VISIBLE
                ivAppIcon.visibility = View.GONE
            } else {
                ivAppBanner.visibility = View.GONE
                ivAppIcon.setImageDrawable(app.icon)
                ivAppIcon.visibility = View.VISIBLE
            }
        }
    }

    override fun getItemCount(): Int = apps.size
}
