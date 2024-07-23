-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- disable H and L to navigate between buffers.
-- reasoning: H and L have a default Vim behavior
-- and should never be overwritten
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")
