-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

---------------------------------------------------------------------------
-- disable H and L to navigate between buffers.
---------------------------------------------------------------------------
-- reasoning: H and L have a default Vim behavior
-- and should never be overwritten
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

---------------------------------------------------------------------------
-- copy file path to clipboard
---------------------------------------------------------------------------
-- source: https://stackoverflow.com/a/17096082/6354514
vim.keymap.set("n", "<leader>yf", ':let @+ = expand("%")<cr>', {
  desc = "Yank relative file path",
})
vim.keymap.set("n", "<leader>yF", ':let @+ = expand("%:p")<cr>', {
  desc = "Yank full file path",
})

---------------------------
--[ VSCode only configs ]--
---------------------------
if vim.g.vscode then
  -- the "close current buffer" in VSCode is kinda buggy
  vim.keymap.del("n", "<leader>bd")
  return
end

---------------------------------------------------
--[ explicit non-VSCode keymaps below this line ]--
---------------------------------------------------

-- since LazyVim comes with bufferline, making buffers look
-- like tabs, I want to navigate between buffers with gt/gT.
vim.keymap.set("n", "gt", ":bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "gT", ":bprevious<cr>", { desc = "Prev buffer" })
