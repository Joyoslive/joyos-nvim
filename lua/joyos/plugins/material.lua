return {
	'marko-cerovac/material.nvim',
	config = function()
		require('material').setup {
			disable = { background = true } }
		vim.g.material_style = 'palenight'
		vim.cmd [[colorscheme material]]


		vim.cmd [[hi CmpGhostText guifg=#676e95]]
		vim.cmd [[hi @property guifg=#a6accd]]
		vim.cmd [[hi @tag guifg=#ffcb6b]]
		vim.cmd [[hi @type guifg=#ffcb6b]]
		vim.cmd [[hi @tag.builtin guifg=#ee747f]]
		vim.cmd [[hi Exception guifg=#c792ea]]

		vim.cmd [[hi CursorLineNr guifg=#ff882b]]
		vim.cmd [[hi LineNr guifg=#7e7e7e]]
		vim.cmd [[hi Comment guifg=#7e7e7e]]

		vim.cmd [[hi @variable.member guifg=#afafd7]]
		-- Lualine
	end
}
