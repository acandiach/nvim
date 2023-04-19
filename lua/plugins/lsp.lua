return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		{ "glepnir/lspsaga.nvim", branch = "main" },
		"jayp0521/mason-null-ls.nvim",
		"jose-elias-alvarez/null-ls.nvim",
		-- "jose-elias-alvarez/typescript.nvim",
	},
	event = "VeryLazy",
	config = function()
		require("abel.lsp")
	end,
}
