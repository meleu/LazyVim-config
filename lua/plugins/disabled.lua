return {
  -- disable mini.surround, (confusing keybindings)
  -- I have years of muscle memory using tpope/vim-surround
  { "echasnovski/mini.surround", enabled = false },

  -- flash.nvim tries to enhance /searching but it's confusing!
  { "folke/flash.nvim", enabled = false },

  -- disable commandline and search in unusual places
  -- NOTE: disabling noice also removes popup notifications
  { "folke/noice.nvim", enabled = false },

  -- disable the "dashboard" (which I sometimes refer as "splashscreen")
  { "goolord/alpha-nvim", enabled = false },
  { "nvimdev/dashboard-nvim", enabled = false },
}
