vim.opt.completeopt = { 'fuzzy', 'menu', 'menuone', 'noselect' }
vim.opt.shortmess:append 'c'

local cmp = require 'cmp'

cmp.setup {
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'path' },
		{ name = 'nvim_lsp_signature_help' },
		{
			name = 'buffer',
			keyword_length = 5
		},
	},

	experimental = {
		ghost_text = { hl_group = "CmpGhostText" },
	},

	mapping = {
		['<C-n>'] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Select },
		['<C-p>'] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Select },
		['<C-y>'] = cmp.mapping(
			cmp.mapping.confirm {
				behavior = cmp.ConfirmBehavior.Insert,
				select = true
			},
			{ 'i', 'c' }
		)
	}
}
