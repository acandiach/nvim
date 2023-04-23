return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		-- { "nvim-telescope/telescope-fzy-native.nvim" },
		{ "xiyaowong/telescope-emoji.nvim" },
		{ "nvim-telescope/telescope-file-browser.nvim" },
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	-- cmd = "Telescope",
	keys = {
		-- find files within current working directory, respects .gitignore
		{ "<leader>ff", "<cmd>Telescope find_files<cr>" },

		-- find string in current working directory as you type
		{ "<leader>fs", "<cmd>Telescope live_grep<cr>" },

		-- find string under cursor in current working directory
		{ "<leader>fc", "<cmd>Telescope grep_string<cr>" },

		-- list open buffers in current neovim instance
		{ "<leader>fb", "<cmd>Telescope buffers<cr>" },

		-- list available help tags
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>" },

		-- TELESCOPE emoji
		{ "<leader><leader>e", "<cmd>Telescope emoji<cr>" },

		-- TELESCOPE GIT commands
		-- list all git commits (use <cr> to checkout}, ["gc" for git commits]
		{ "<leader>gc", "<cmd>Telescope git_commits<cr>" },

		-- list git commits for current file/buffer (use <cr> to checkout), ["gfc" for git file commits]
		{ "<leader>gfc", "<cmd>Telescope git_bcommits<cr>" },

		-- list git branches (use <cr> to checkout), ["gb" for git branch]
		{ "<leader>gb", "<cmd>Telescope git_branches<cr>" },

		-- list current changes per file with diff preview ["gs" for git status]
		{ "<leader>gs", "<cmd>Telescope git_status<cr>" },
	},
	event = "VeryLazy",
	config = function()
		-- require("abel.telescope")

		-- import telescope plugin safely
		local telescope_setup, telescope = pcall(require, "telescope")
		if not telescope_setup then
			return
		end

		-- import telescope actions safely
		local actions_setup, actions = pcall(require, "telescope.actions")
		if not actions_setup then
			return
		end

		-- configure telescope
		telescope.setup({
			-- configure custom mappings
			defaults = {
				prompt_prefix = "󱎱 ", -- 󰥩  󱎰 󱎱   󱙓 󱙔 󱦞 
				selection_caret = " ", -- , , , ,    

				winblend = 0,

				layout_strategy = "horizontal",
				layout_config = {
					width = 0.95,
					height = 0.85,
					-- preview_cutoff = 120,
					prompt_position = "bottom",

					horizontal = {
						preview_width = function(_, cols, _)
							if cols > 200 then
								return math.floor(cols * 0.5)
							else
								return math.floor(cols * 0.6)
							end
						end,
					},

					vertical = {
						width = 0.9,
						height = 0.95,
						preview_height = 0.5,
					},

					flex = {
						horizontal = {
							preview_width = 0.9,
						},
					},
				},
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
					},
				},
			},
			-- pickers = {
			-- 	find_files = {
			-- 		theme = "", -- dropdown, cursor, ivy, or blank for default
			-- 	},
			-- },
		})
		telescope.load_extension("emoji")
		telescope.load_extension("file_browser")
		-- telescope.load_extension("fzf")
	end,
}
