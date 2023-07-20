-- Remap space as leader key
-- keymap("", "<Space>", "<Nop>", opts)
-- Leader
-- vim.g.mapleader = ","

local keymap = vim.keymap
local opts = { silent = true }

-- Clear highlighting
keymap.set('n', '<Space>', '<cmd>nohlsearch<CR>', opts)
