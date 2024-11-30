-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- disable H and L to navigate between buffers.
-- reasoning: H and L have a default Vim behavior
-- and should never be overwritten
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

--[ VSCode only configs ]--
if vim.g.vscode then
  -- the "close current buffer" in VSCode is kinda buggy
  vim.keymap.del("n", "<leader>bd")
  return
end

-----------------------------------------------------------------------
--[ put below this line only the keymaps you do NOT want in VSCode. ]--
-----------------------------------------------------------------------

-- since LazyVim comes with bufferline, making buffers look
-- like tabs, I want to navigate between buffers with gt/gT.
vim.keymap.set("n", "gt", ":bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "gT", ":bprevious<cr>", { desc = "Prev buffer" })
