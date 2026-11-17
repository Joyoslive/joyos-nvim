local M = {}

function M.format(bufnr)
	bufnr = bufnr or vim.api.nvim_get_current_buf()

	local eslint_attached = #vim.lsp.get_clients({
		bufnr = bufnr,
		name = 'eslint',
	}) > 0

	if eslint_attached then
		vim.api.nvim_buf_call(bufnr, function()
			vim.cmd('LspEslintFixAll')
		end)

		return
	end

	vim.lsp.buf.format({
		bufnr = bufnr,
		async = false,
	})
end

return M
