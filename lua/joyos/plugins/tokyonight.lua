return {
	'folke/tokyonight.nvim',
	config = function()
		require 'joyos.config.theme'
	end,
	opts = {
		style = 'moon',
		transparent = true,
		styles = {
			floats = "transparent",
		},
	}
}
