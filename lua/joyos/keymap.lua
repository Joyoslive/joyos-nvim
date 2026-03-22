vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Exit
vim.keymap.set("i", "jk", "<esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "kj", "<esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "<C-c>", "<esc>", { desc = "Exit insert mode" })

-- Search movement with centering
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result centered" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half-page down centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half-page up centered" })

-- Move selected lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })

-- Buffers
vim.keymap.set("n", "<leader>bl", "<cmd>buffers<cr>", { desc = "[B]uffer [L]ist" })
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "[B]uffer [D]elete" })
vim.keymap.set("n", "<leader>bw", "<cmd>bwipe<cr>", { desc = "[B]uffer [W]ipe" })
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "[B]uffer [N]ext" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "[B]uffer [P]revious" })

-- Explorer
vim.keymap.set("n", "<leader>dl", "<cmd>Ex<cr>", { desc = "[D]irectory [L]ist" })

