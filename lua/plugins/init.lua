return {
	"nvim-lua/plenary.nvim",

	{
		"windwp/nvim-autopairs",
		config = true,
	},

	{
		"windwp/nvim-ts-autotag",
		after = "nvim-treesitter",
		config = true,
	},

	{
		"christoomey/vim-tmux-navigator",
		keys = {
			{ "<C-l>", "<cmd>TmuxNavigateRight<CR>", desc = "move cursor right" },
			{ "<C-h>", "<cmd>TmuxNavigateLeft<CR>", desc = "move cursor left" },
			{ "<C-j>", "<cmd>TmuxNavigateDown<CR>", desc = "move cursor down" },
			{ "<C-k>", "<cmd>TmuxNavigateUp<CR>", desc = "move cursor up" },
		},
		config = function() end,
	},

	{
		"mbbill/undotree",
		keys = {
			{ "<leader>tt", "<cmd>UndotreeToggle<cr>", desc = "views last change in file" },
		},
	},
}
