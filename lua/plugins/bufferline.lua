return {
	"akinsho/bufferline.nvim",
	opts = {
		options = {
			separator = true,
			color_icons = true,
			show_buffer_icons = true,
			separator_style = "slant",
			right_mouse_command = "bdelete! %d",
			left_mouse_command = "buffer %d",
		},
	},
}
