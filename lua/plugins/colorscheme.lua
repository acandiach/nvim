------Grubvox Material configuration------
-- "soft", "medium", "hard"
vim.g["gruvbox_material_background"] = "hard"

-- "mix", "material", "original"
vim.g["gruvbox_material_foreground"] = "material"

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
			-- 	-- "moon", "storm" or "night"
			-- 	vim.cmd.colorscheme("tokyonight")
		end,
	},
}
