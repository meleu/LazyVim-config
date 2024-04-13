-- overriding LazyVim's default LSP configs
return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    -- Disabling 'gr' for "Go to References"
    -- I want to use gr for "Go Replace" (vim-scripts/ReplaceWithRegister)
    keys[#keys + 1] = { "gr", false }

    -- use gR to "Go to References"
    keys[#keys + 1] = { "gR", ":Telescope lsp_references<cr>", desc = "[G]oto [R]eferences" }
  end,
}
