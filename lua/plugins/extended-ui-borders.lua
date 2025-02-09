-- This is a centralized file with the goal to configure rounded borders for
-- different plugins, like:
-- * Mason dialog
-- * hover documentation
-- * LSP diagnostics
-- * completion/documentation hints
-- NOTE: borders in Lazy.nvim dialog is configured in `lua/config/lazy.lua`
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.diagnostics = {
        float = {
          border = "rounded",
        },
      }
    end,
  },
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = { border = "single" },
        documentation = { window = { border = "single" } },
      },
      signature = { window = { border = "single" } },
    },
  },
}
