-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- disable the concealing in some file formats
-- (this "conceal" thing omits quotes, which is important in JSON)
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "json", "jsonc", "yaml" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})
