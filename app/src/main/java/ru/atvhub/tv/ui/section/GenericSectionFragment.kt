package ru.atvhub.tv.ui.section

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import ru.atvhub.tv.R
import ru.atvhub.tv.databinding.FragmentGenericSectionBinding

class GenericSectionFragment : Fragment() {

    private var _binding: FragmentGenericSectionBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentGenericSectionBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        val title = arguments?.getString(ARG_TITLE) ?: ""
        val desc = arguments?.getString(ARG_DESC) ?: ""
        val iconRes = arguments?.getInt(ARG_ICON, R.drawable.ic_launcher_mark) ?: R.drawable.ic_launcher_mark

        binding.sectionTitle.text = title
        binding.sectionDesc.text = desc
        binding.sectionIcon.setImageResource(iconRes)
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }

    companion object {
        private const val ARG_TITLE = "arg_title"
        private const val ARG_DESC = "arg_desc"
        private const val ARG_ICON = "arg_icon"

        fun newInstance(title: String, desc: String, iconRes: Int): GenericSectionFragment {
            return GenericSectionFragment().apply {
                arguments = Bundle().apply {
                    putString(ARG_TITLE, title)
                    putString(ARG_DESC, desc)
                    putInt(ARG_ICON, iconRes)
                }
            }
        }
    }
}
