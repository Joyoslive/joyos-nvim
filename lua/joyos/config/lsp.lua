local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("lua_ls", {
	capabilities = cmp_capabilities,
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
