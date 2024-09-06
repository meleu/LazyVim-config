-- overriding LazyVim's default LSP configs
return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- I want to use gr for "Go Replace" (vim-scripts/ReplaceWithRegister)
    keys[#keys + 1] = { "gr", false }
    -- use gR to "Go to References"
    keys[#keys + 1] = { "gR", ":Telescope lsp_references<cr>", desc = "[G]oto [R]eferences" }
    keys[#keys + 1] = { "gh", vim.lsp.buf.hover, desc = "[G]oto [H]over" }

    opts.diagnostics = {
      float = {
        border = "rounded",
      },
    }
  end,
}
