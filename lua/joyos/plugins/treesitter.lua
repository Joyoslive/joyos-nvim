return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function()
			require 'nvim-treesitter'.setup {
				-- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
				install_dir = vim.fn.stdpath('data') .. '/site',
				ensure_installed = {
					'lua', 'typescript', 'tsx', 'css', 'styled'
				}
			}

			vim.api.nvim_create_autocmd("FileType", {
				callback = function(args)
					local buf = args.buf
					local ok, parser = pcall(vim.treesitter.get_parser, buf)

					if not ok or not parser then
						return
					end

					vim.treesitter.start()
				end
			})
		end
	},

	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		branch = "main",
		init = function()
			vim.g.no_plugin_maps = true
		end,
		config = function()
			require('nvim-treesitter-textobjects').setup {
				lookahead = true,
			}

			local tst_select = require 'nvim-treesitter-textobjects.select'

			vim.keymap.set({ "x", "o" }, "af", function()
				tst_select.select_textobject("@function.outer", "textobjects")
			end)
			vim.keymap.set({ "x", "o" }, "if", function()
				tst_select.select_textobject("@function.inner", "textobjects")
			end)
			vim.keymap.set({ "x", "o" }, "ac", function()
				tst_select.select_textobject("@class.outer", "textobjects")
			end)
			vim.keymap.set({ "x", "o" }, "ic", function()
				tst_select.select_textobject("@class.inner", "textobjects")
			end)
			-- You can also use captures from other query groups like `locals.scm`
			vim.keymap.set({ "x", "o" }, "as", function()
				tst_select.select_textobject("@local.scope", "locals")
			end)
		end,
	}
}
