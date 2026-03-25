local M = {}

function M.format(bufnr)
	bufnr = bufnr or vim.api.nvim_get_current_buf();

	local eslint_attached = #vim.lsp.get_clients({
		bufnr = bufnr,
		name = 'eslint'
	}) > 0

	vim.lsp.buf.format({
		bufnr = bufnr,
		async = true,
		filter = function(client)
			if eslint_attached then
				return client.name == 'eslint'
			end
			return true
		end
	})
end

return M
