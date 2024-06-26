-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- meleu: load my own "old" configs written in VimScript
if vim.fn.filereadable("~/.vimrc") then
  vim.cmd("source ~/.vimrc")
end

-- treat .bats files like shell scripts (useful to have shellcheck and shfmt
-- functionalities even when working with bats files).
vim.filetype.add({
  extension = { bats = "sh" },
})
