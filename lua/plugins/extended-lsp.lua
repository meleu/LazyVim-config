return {
  "neovim/nvim-lspconfig",
  opts = function()
    -- keymaps
    ------------------------------------------------------------------------
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    -- I want to use gr for "Go Replace" (ReplaceWithRegister plugin)
    keys[#keys + 1] = { "gr", false }

    -- use gR to "Go to References"
    -- NOTE: I still didn't figure how to show the list in the snacks picker
    keys[#keys + 1] = { "gR", vim.lsp.buf.references, desc = "References", nowait = true }

    -- use gh to "hover documentation"
    keys[#keys + 1] = { "gh", vim.lsp.buf.hover, desc = "Hover" }
  end,
}
