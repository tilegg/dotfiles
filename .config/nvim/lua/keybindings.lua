-- Custom keybindings

vim.g.mapleader = " "

-- Tabline
vim.keymap.set("n", "<A-n>", ":TablineBufferNext<CR>", { silent = true })
vim.keymap.set("n", "<A-m>", ":TablineBufferPrevious<CR>", { silent = true })

-- Navigate between splits
vim.keymap.set("n", "<A-h>", "<C-w>h<CR>")
vim.keymap.set("n", "<A-j>", "<C-w>j<CR>")
vim.keymap.set("n", "<A-k>", "<C-w>k<CR>")
vim.keymap.set("n", "<A-l>", "<C-w>l<CR>")

-- Move splits
vim.keymap.set("n", "<A-H>", "<C-w>H<CR>")
vim.keymap.set("n", "<A-J>", "<C-w>J<CR>")
vim.keymap.set("n", "<A-K>", "<C-w>K<CR>")
vim.keymap.set("n", "<A-L>", "<C-w>L<CR>")

-- NerdTree
vim.keymap.set("n", "<leader>t", ":NERDTreeToggleVCS<CR>", { silent = true })
vim.keymap.set("n", "<leader>v", ":NERDTreeFind<CR>", { silent = true })