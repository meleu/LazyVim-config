-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
----------------------------------------------------
-- meleu: H and L have a native meaning in vim and should not be remapped to
-- do other things. These are keymaps I use a lot in other apps that have
-- vim keybindings (like tmux and Obsidian).
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

-- in LazyVim the buffers kinda behave like tabs, then I want to navigate
-- between buffers using `gt` (I found this useful to keep the same feel
-- as when I use VSCodeVim extension).
vim.keymap.set("n", "gt", ":bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "gT", ":bprevious<cr>", { desc = "Previous buffer" })
