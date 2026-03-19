return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
		},

		extensions = {
			fzf = {
				fuzzy = true,
				override_generic_sorter = true,
				override_file_sorter = true,
				case_mode = 'smart_case',
			}
		},

		config = function()
			local builtins = require('telescope.builtin')
			vim.keymap.set('n', '<leader>sf', builtins.find_files, { desc = '[S]earch [F]iles' })
			vim.keymap.set('n', '<leader>sb', builtins.buffers, { desc = '[S]earch [B]uffers' })
			vim.keymap.set('n', '<leader>sh', builtins.help_tags, { desc = '[S]earch [H]elp' })
			vim.keymap.set('n', '<leader>sa', builtins.live_grep, { desc = '[S]earch [A]ll' })
			vim.keymap.set('n', '<leader>sc',
				function()
					builtins.find_files { cwd = vim.fn.stdpath('config') }
				end,
				{ desc = '[S]earch [C]onfig' }
			)

			require('telescope').load_extension('fzf')
		end
	},
}
