-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- load my own "old" configs written in VimScript
if vim.fn.filereadable("~/.vimrc") then
  vim.cmd("source ~/.vimrc")
end

vim.filetype.add({
  -- consider BATS files as shell scripts
  extension = {
    bats = "sh",
    blerc = "sh",
  },

  -- consider Dangerfile as ruby code
  filename = { ["Dangerfile"] = "ruby" },

  -- consider .code-workspace files as JSON
  pattern = { [".*%.code%-workspace"] = "json" },
})

-- LSP Server to use for Ruby
-- set to "ruby_lsp" to use it instead of "solargraph"
vim.g.lazyvim_ruby_lsp = "ruby_lsp"
-- vim.g.lazyvim_ruby_lsp = "solargraph"
-- vim.g.lazyvim_ruby_formatter = "rubocop"
-- NOTE: using standardrb as formatter ignores project's .rubocop.yml
vim.g.lazyvim_ruby_formatter = "standardrb"

-- disable animations
-- vim.g.snacks_animate = false

if vim.g.neovide then
  vim.o.guifont = "CaskaydiaMono Nerd Font Mono:h14"
end
