-- Key mappings

local map = vim.keymap.set

-- Basic operations
map("n", "<leader>w", ":w<CR>", { desc = "Save" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit" })
map("n", "<leader>x", ":bd<CR>", { desc = "Close Buffer" })
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear Search Highlight" })

-- Split navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move to Left Split" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to Bottom Split" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to Top Split" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to Right Split" })

-- Buffer navigation
map("n", "<S-h>", ":bprevious<CR>", { desc = "Previous Buffer" })
map("n", "<S-l>", ":bnext<CR>", { desc = "Next Buffer" })

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move lines
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })
