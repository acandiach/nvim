return {
	"nvim-tree/nvim-tree.lua",
	keys = {
		{ "<leader>n", "<cmd>NvimTreeToggle<cr>", desc = "navigater file in tree" },
	},
	config = function()
		require("nvim-tree").setup({
			view = {
				side = "right",
				number = true,
				relativenumber = true,
				signcolumn = "yes",
			},
			renderer = {
				indent_markers = {
					enable = true,
					inline_arrows = true,
					icons = {
						corner = "└ ",
						edge = "¦ ",
						item = "│",
						bottom = "─",
						none = "  ",
					},
				},
				icons = {
					glyphs = {
						default = "",
						symlink = "",
						bookmark = "",
						modified = "?",
						folder = {
							arrow_closed = "", --"", "", ""
							arrow_open = "", --"", "", ""
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
							symlink_open = "",
						},
						git = {
							unstaged = "", --"", "", "", "", "", "綠",""
							staged = "", --"", "", "", "",""
							unmerged = "",
							renamed = "➜",
							untracked = "", --"硫", " ",""
							deleted = "ﮖ", -- "ﮖ", "ﯰ", "", "",""
							ignored = "◌",
						},
					},
				},
			},
			diagnostics = {
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
		})

		-- change color for arrows, folder and forlder name
		vim.cmd([[ highlight NvimTreeIndentMarker guifg=#ACAAA4 ]])
		vim.cmd([[ highlight NvimTreeFolderIcon guifg=#79756C ]])
		vim.cmd([[ highlight NvimTreeFolderName guifg=#797272 ]])
		vim.cmd([[ highlight NvimTreeOpenedFolderName guifg=#B4B2AC ]])

		-- change color for git file for states
		-- vim.cmd([[ highlight NvimTreeGitDirty guifg=# ]])
		vim.cmd([[ highlight NvimTreeGitStaged guifg=#BCC800 ]])
		vim.cmd([[ highlight NvimTreeGitMerge guifg=#0084B2 ]])
		vim.cmd([[ highlight NvimTreeGitRenamed guifg=#DA8B00 ]])
		vim.cmd([[ highlight NvimTreeGitNew guifg=#74A218 ]])
		vim.cmd([[ highlight NvimTreeGitDeleted guifg=#DA0000]])
	end,
}
