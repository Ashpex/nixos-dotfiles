-- Neovim configuration

-- Basic settings
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.shiftwidth = 2          -- Indent width
vim.opt.tabstop = 2             -- Tab width
vim.opt.smartindent = true      -- Smart indenting
vim.opt.wrap = false            -- Don't wrap lines
vim.opt.termguicolors = true    -- True color support

-- Search settings
vim.opt.ignorecase = true       -- Ignore case when searching
vim.opt.smartcase = true        -- Unless capital letters are used

-- Leader key
vim.g.mapleader = " "

-- Basic keymaps
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Add your custom configuration here
