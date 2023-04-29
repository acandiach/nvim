-- To activate one theme comment of current theme and uncomment of theme what you want

------ Grubvox Material configuration ------
-- "soft", "medium", "hard"
-- vim.g.gruvbox_contrast_dark = "hard"
-- vim.g.gruvbox_italic = 1
-- vim.g.gruvbox_hls_cursor = "aqua"

------- Edge configuration ----------
--'default', 'aura', 'neon'
vim.g["edge_style"] = "default"
vim.g["edge_enable_italic"] = 1
vim.g["edge_dim_foreground"] = 1

return {
	-- { "typicode/bg.nvim", lazy = false },
	-- {
	-- 	------ Grubvox ------
	-- 	"morhetz/gruvbox",
	-- 	priotity = 1000,
	-- 	config = function()
	-- 		-- vim.cmd.colorscheme("gruvbox")
	-- 	end,
	-- },

	{
		------ Edge ------
		"sainnhe/edge",
		priotity = 1000,
		config = function()
			vim.cmd.colorscheme("edge")
		end,
	},

	{
		------ OneDark ------
		"navarasu/onedark.nvim",
		priotity = 1000,
		config = function()
			require("onedark").setup({
				-- darker, warmer, dee-- Lua
				style = "darker",
			})
			-- vim.cmd.colorscheme("onedark")
		end,
	},

	-- {
	-- 	------ Catppuccin -------
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priotity = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
	-- 			background = { -- :h background
	-- 				dark = "mocha",
	-- 			},
	-- 		})
	-- 		-- vim.cmd.colorscheme("catppuccin")
	-- 	end,
	-- },
}
