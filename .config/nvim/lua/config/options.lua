-- Vim options and settings

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true

-- UI
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.mouse = "a"

-- Completion
vim.opt.completeopt = "menu,menuone,noselect"

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
