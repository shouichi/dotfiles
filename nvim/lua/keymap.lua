vim.g.mapleader = "["

vim.keymap.set("n", "-", "$")
vim.keymap.set({ "n", "v" }, "<C-j>", "3gj")
vim.keymap.set({ "n", "v" }, "<C-k>", "3gk")

vim.keymap.set("i", "jj", "<Esc>:w<CR>")
vim.keymap.set("i", "<C-a>", "<Home>")
vim.keymap.set("i", "<C-e>", "<End>")
