-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- load my own "old" configs written in VimScript
if vim.fn.filereadable("~/.vimrc") then
  vim.cmd("source ~/.vimrc")
end

-- consider BATS files as shell scripts
vim.filetype.add({
  extension = { bats = "sh" },
})

-- LSP Server to use for Ruby
-- set to "ruby_lsp" to use it instead of "solargraph"
-- vim.g.lazyvim_ruby_lsp = "ruby_lsp"
vim.g.lazyvim_ruby_lsp = "solargraph"
-- vim.g.lazyvim_ruby_formatter = "standardrb"
vim.g.lazyvim_ruby_formatter = "rubocop"

if vim.g.neovide then
  vim.o.guifont = "CaskaydiaMono Nerd Font Mono:h12"
end
