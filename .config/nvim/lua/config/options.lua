-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable autoformat
vim.g.autoformat = false

-- Set system python (needed for venvs to work properly)
vim.g.python3_host_prog = '/usr/bin/python3'
local opt = vim.opt

-- Disable mouse mode
opt.mouse = ""

-- Disable clipboard
opt.clipboard = ""
