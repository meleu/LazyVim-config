-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- These keys have a native meaning in vim and should be remapped!
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

-- since LazyVim comes with bufferline, making buffers look like tabs,
-- I want to navigate between buffers with gt/gT.
vim.keymap.set("n", "gt", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "gT", ":BufferLineCyclePrev<CR>")
