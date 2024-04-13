-- plugins that don't require any configuration
return {
  -- NOTE: ReplaceWithRegister default keymap conflictswith LazyVim's "go reference"
  -- The solutoin is in the 'lua/plugins/lsp.lua' file
  "vim-scripts/ReplaceWithRegister",
  "tpope/vim-surround",
  "tpope/vim-repeat", -- make vim-surround dot-repeatable
  "tpope/vim-speeddating", -- <C-a>/<C-x> to increase/decrease dates
}
