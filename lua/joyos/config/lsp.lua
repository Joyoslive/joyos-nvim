local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("lua_ls", {
	capabilities = cmp_capabilities,
})

vim.lsp.config("ts_ls", {
	capabilities = cmp_capabilities,
})

vim.lsp.config("eslint", {
	capabilities = cmp_capabilities,
	filetypes = {
		'javascript',
		'typescript',
		'javascriptreact',
		'typescriptreact',
		'javascript.jsx',
		'typescript.tsx'
	}
})

vim.lsp.config("cssls", {
	capabilities = cmp_capabilities,
	filetypes = {
		'css',
	}
})

-- Keymaps
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		-- Format
		vim.keymap.set("n", "<leader>bf", function()
			vim.lsp.buf.format({ async = true })
		end, { desc = '[B]uffer [F]ormat', buffer = ev.buf })
	end,
})

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.lsp.buf.format({ async = true })
	end
})
