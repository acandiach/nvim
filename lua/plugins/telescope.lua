return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	"nvim-telescope/telescope-fzf-native.nvim",
	build = "make",
	dependencies = {
		-- "nvim-telescope/telescope-file-browser.nvim",
	},
	-- cmd = "Telescope",
	keys = {
		-- find files within current working directory, respects .gitignore
		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>"),

		-- find string in current working directory as you type
		vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>"),

		-- find string under cursor in current working directory
		vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>"),

		-- list open buffers in current neovim instance
		vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>"),

		-- list available help tags
		vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>"),

		-- TELESCOPE GIT commands
		-- list all git commits (use <cr> to checkout), ["gc" for git commits]
		vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>"),

		-- list git commits for current file/buffer (use <cr> to checkout), ["gfc" for git file commits]
		vim.keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>"),

		-- list git branches (use <cr> to checkout), ["gb" for git branch]
		vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>"),

		-- list current changes per file with diff preview ["gs" for git status]
		vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>"),
	},
	event = "VeryLazy",
	config = function()
		require("abel.telescope")
		-- local telescope = require("telescope")
		-- local actions = require("telescope.actions")
		-- -- configure telescope
		-- telescope.setup({
		-- 	-- configure custom mappings
		-- 	defaults = {
		-- 		mappings = {
		-- 			i = {
		-- 				["<C-k>"] = actions.move_selection_previous, -- move to prev result
		-- 				["<C-j>"] = actions.move_selection_next, -- move to next result
		-- 				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
		-- 			},
		-- 		},
		-- 	},
		-- 	extensions = {
		-- 		fzf = {
		-- 			fuzzy = true, -- false will only do exact matching
		-- 			override_generic_sorter = true, -- override the generic sorter
		-- 			override_file_sorter = true, -- override the file sorter
		-- 			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
		-- 			-- the default case_mode is "smart_case"
		-- 		},
		-- 		file_browser = {
		-- 			theme = "ivy",
		-- 			hijack_netrw = true,
		-- 			initial_mode = "insert",
		-- 			mappings = {
		-- 				["i"] = {
		-- 					-- your custom insert mode mappings
		-- 					["<A-a>"] = telescope.extensions.file_browser.actions.create,
		-- 					["<C-t>"] = actions.file_tab,
		-- 				},
		-- 				["n"] = {
		-- 					-- your custom normal mode mappings
		-- 				},
		-- 			},
		-- 		},
		-- 	},
		-- })
		-- -- telescope.load_extension("file_browser")
		-- telescope.load_extension("fzf")
	end,
}
