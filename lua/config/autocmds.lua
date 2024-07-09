-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Disable the concealing in some file formats
-- This "conceal" thing omits quotes.
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "json", "jsonc", "yaml", "hurl" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})
