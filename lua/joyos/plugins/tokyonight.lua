return {
	'folke/tokyonight.nvim',
	lazy = false,
	priority = 1000,
	opts = {
		style = 'moon',
		styles = {
			floats = "transparent",
			keywords = { italic = false },
			comments = { italic = false },
		}
	},
	config = function(_, opts)
		require("tokyonight").setup(opts)
		vim.cmd [[colorscheme tokyonight]]
		vim.cmd [[hi @keyword guifg=#c099ff]]

		-- CMP
		-- Ghost Text
		vim.cmd [[hi CmpGhostText guifg=#4c4f55]]
	end,
}
