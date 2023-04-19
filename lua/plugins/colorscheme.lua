return {
	{
		------ OneDark ------
		"navarasu/onedark.nvim",
		priotity = 1000,
		config = function()
			require("onedark").setup({
				-- darker, warmer, dee-- Lua
				style = "warmer",
			})
			vim.cmd.colorscheme("onedark")
		end,
	},

	{
		------Grubvox Material------
		-- "sainnhe/gruvbox-material",
		-- priotity = 1000,
		-- config = function()
		-- 	require("gruvbox-material").setup({})
		-- 	vim.cmd.colorscheme("gruvbox-material")
		-- 	vim.g["gruvbox_material_background"] = "hard"
		-- 	vim.g["gruvbox_material_better_performance"] = 1
		-- 	vim.g["gruvbox_material_cursor"] = "auto"
		-- end,
	},

	{

		------ Tokyonight ------
		-- "folke/tokyonight.nvim",
		-- priotity = 1000,
		-- config = function()
		-- 	require("tokyonight").setup({ style = "night" })
		-- 	vim.cmd.colorscheme("tokyonight")
		-- "moon", "storm" or "night"
		-- end,
	},
}
