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

if vim.g.neovide then
  vim.o.guifont = "Hack Nerd Font Mono:h12" -- text below applies for VimScript
end
