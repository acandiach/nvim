return {
	"Wansmer/treesj",
	keys = { { "<leader><leader>m", "<cmd>TSJToggle<CR>" } },
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("treesj").setup({})
	end,
}
