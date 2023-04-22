------Grubvox Material configuration------
vim.g["gruvbox_material_background"] = "hard" -- "soft", "medium", "hard"
vim.g["gruvbox_material_better_performance"] = 1 -- 1 or 0
vim.g["gruvbox_material_cursor"] = "aqua" --'auto', 'red', 'orange', 'yellow', 'green', 'aqua', 'blue', 'purple'
vim.g["gruvbox_material_foreground"] = "material" -- "mix", "material", "original"

-- to activate one theme comment "vim.cmd.colorscheme" of current theme and uncomment "vim.cmd.colorscheme" of theme what you want

return {
	{
		------ OneDark ------
		"navarasu/onedark.nvim",
		priotity = 1000,
		config = function()
			require("onedark").setup({
				-- darker, warmer, dee-- Lua
				style = "darker",
			})
			-- 	vim.cmd.colorscheme("onedark")
		end,
	},

	{
		------Grubvox Material------
		"sainnhe/gruvbox-material",
		priotity = 1000,
		config = function()
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},

	{

		------ Tokyonight ------
		"folke/tokyonight.nvim",
		priotity = 1000,
		config = function()
			require("tokyonight").setup({ style = "night" })
			-- 	vim.cmd.colorscheme("tokyonight")
			-- 	-- "moon", "storm" or "night"
		end,
	},
}
