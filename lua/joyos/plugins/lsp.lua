return {

	{
		'neovim/nvim-lspconfig',
		dependencies = { 'folke/lazydev.nvim', 'hrsh7th/nvim-cmp' },
		config = function()
			require 'joyos.config.lsp'
		end,
	},

	{
		'mason-org/mason.nvim',
		opts = {},
	},

	{
		'mason-org/mason-lspconfig.nvim',
		dependencies = {
			'mason-org/mason.nvim',
			'neovim/nvim-lspconfig',
		},
		opts = {
			ensure_installed = { 'lua_ls', 'ts_ls', 'eslint' },
			automatic_enable = { 'lua_ls', 'ts_ls', 'eslint' },
		},
	},
}
