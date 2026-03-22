-- Fix termcolor for e.g. tmux
vim.opt.termguicolors = true

-- Ruler
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true

-- Tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

-- List chars
vim.opt.listchars = {
	tab = '→ ',
	space = '·',
}
vim.opt.list = true

-- Signcolumn
vim.opt.signcolumn = 'yes'

-- Scrolloff
vim.opt.scrolloff = 8

-- Window split
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.inccommand = 'nosplit'

-- Update
vim.opt.updatetime = 1000

-- Diagnostics
vim.diagnostic.config({ virtual_text = true })

-- autoformat
vim.opt.formatoptions:remove('o')

