-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local util = require("config.util")

-- load my own "old" configs written in VimScript
if util.is_file_readable("~/.vimrc") then
  vim.cmd.source("~/.vimrc")
end

-- ----------------------------------------------------------------------
-- File type customization
-- ----------------------------------------------------------------------
vim.filetype.add({
  extension = {
    -- consider BATS files as shell scripts
    bats = "sh",
    -- consider ble.sh configs as shell scripts
    blerc = "sh",
  },

  -- consider Dangerfile as ruby code
  filename = { ["Dangerfile"] = "ruby" },

  -- consider .code-workspace files as JSON
  pattern = { [".*%.code%-workspace"] = "json" },
})

-- ----------------------------------------------------------------------
-- LSP Server to use for Ruby
-- ----------------------------------------------------------------------
-- set to "ruby_lsp" to use it instead of "solargraph"
vim.g.lazyvim_ruby_lsp = "ruby_lsp"
-- vim.g.lazyvim_ruby_lsp = "solargraph"
-- vim.g.lazyvim_ruby_formatter = "rubocop"
-- NOTE: using standardrb as formatter ignores project's .rubocop.yml
vim.g.lazyvim_ruby_formatter = "standardrb"

-- disable animations
-- vim.g.snacks_animate = false

-- load neovide specific configs
if vim.g.neovide then
  local neovide_options_file = vim.fn.stdpath("config") .. "/lua/config/neovide-options.lua"
  if util.is_file_readable(neovide_options_file) then
    dofile(neovide_options_file)
  end
end
