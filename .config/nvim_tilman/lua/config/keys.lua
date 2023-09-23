-- Custom keybindings

vim.g.mapleader = " "


-- Tabline
vim.keymap.set("n", "<A-n>", ":TablineBufferNext<CR>", { silent = true })
vim.keymap.set("n", "<A-m>", ":TablineBufferPrevious<CR>", { silent = true })

-- Navigate between splits
--vim.keymap.set("n", "<A-h>", "<C-w>h")
--vim.keymap.set("n", "<A-j>", "<C-w>j")
--vim.keymap.set("n", "<A-k>", "<C-w>k")
--vim.keymap.set("n", "<A-l>", "<C-w>l")

-- Navigate between splits (tmux-integration)
vim.keymap.set("", "<A-h>", ":<C-U>TmuxNavigateLeft<cr>", { silent = true, noremap = true })
vim.keymap.set("", "<A-j>", ":<C-U>TmuxNavigateDown<cr>", { silent = true, noremap = true })
vim.keymap.set("", "<A-k>", ":<C-U>TmuxNavigateUp<cr>", { silent = true, noremap = true })
vim.keymap.set("", "<A-l>", ":<C-U>TmuxNavigateRight<cr>", { silent = true, noremap = true })
vim.keymap.set("", "<A-/>", ":<C-U>TmuxNavigatePrevious<cr>", { silent = true, noremap = true })

-- Move splits
vim.keymap.set("n", "<A-H>", "<C-w>H")
vim.keymap.set("n", "<A-J>", "<C-w>J")
vim.keymap.set("n", "<A-K>", "<C-w>K")
vim.keymap.set("n", "<A-L>", "<C-w>L")

-- Resize splits
vim.keymap.set("n", "<A-left>" , ":vertical resize -10<cr>")
vim.keymap.set("n", "<A-down>" , ":resize -10<cr>")
vim.keymap.set("n", "<A-up>"   , ":resize +10<cr>")
vim.keymap.set("n", "<A-right>",  ":vertical resize +10<cr>")

--vim.keymap.set("n", "<C-H>", "<C-w>H")
--vim.keymap.set("n", "<C-J>", "<C-w>J")
--vim.keymap.set("n", "<C-K>", "<C-w>K")
--vim.keymap.set("n", "<C-L>", "<C-w>L")

-- Move sections in V-mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor at first position when using J (using mark 6)
vim.keymap.set("n", "J", "m6J'6")

-- Keep cursor centered when C-d/u'ing
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-------------
-- Plugins --
-------------

-- NerdTree
vim.keymap.set("n", "<leader>t", ":NERDTreeToggleVCS<CR>", { silent = true })
vim.keymap.set("n", "<leader>v", ":NERDTreeFind<CR>", { silent = true })

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle )

-- Git fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git )

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fp', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Vimspector
--vim.keymap.set('n', '<leader>vG', "<cmd>lua require('config.vimspector').generate_debug_profile()<cr>", {"Generate Debug Profile"})
--vim.keymap.set('n', '<leader>vI', "<cmd>VimspectorInstall<CR>", {})

vim.keymap.set('n', '<leader>dd', "<cmd>call vimspector#Launch()<CR>", {})
vim.keymap.set('n', '<leader>dq', "<cmd>call vimspector#Reset()<CR>", {})
vim.keymap.set('n', '<leader>dc', "<cmd>call vimspector#Continue()<CR>", {})

vim.keymap.set('n', '<leader>dt', "<cmd>call vimspector#ToggleBreakpoint()<CR>", {})
vim.keymap.set('n', '<leader>dT', "<cmd>call vimspector#ClearBreakpoints()<CR>", {})

vim.keymap.set('n', '<leader>dk', "<Plug>VimspectorRestart", {})
vim.keymap.set('n', '<leader>dh', "<Plug>VimspectorStepOut", {})
vim.keymap.set('n', '<leader>dl', "<Plug>VimspectorStepInto", {})
vim.keymap.set('n', '<leader>dj', "<Plug>VimspectorStepOver", {})

--vim.keymap.set('n', '<leader>di', "<Plug>VimspectorBalloonEval", {})

--print("Keybindings loaded!")