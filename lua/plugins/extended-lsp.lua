return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    -- I want to use gr for "Go Replace" (ReplaceWithRegister plugin)
    keys[#keys + 1] = { "gr", false }

    -- use gR to "Go to References"
    keys[#keys + 1] = { "gR", ":Telescope lsp_references<cr>", desc = "[G]oto [R]eferences" }
  end,
}
