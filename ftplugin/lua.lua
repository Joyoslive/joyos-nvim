local buf = vim.api.nvim_get_current_buf()

vim.keymap.set("n", "<leader>xl", "<cmd>.lua<CR>", { desc = "e[X]execute [L]ine", buffer = buf })
vim.keymap.set("n", "<leader>xf", "<cmd>%lua<CR>", { desc = "e[X]execute [F]ile", buffer = buf })
