-- This is a centralized file with the goal to configure rounded borders for
-- different plugins.
-- NOTE: borders in Lazy.nvim dialog is configured in `lua/config/lazy.lua`
return {
  {
    -- Mason dialog
    "mason-org/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  {
    -- hover documentation
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    -- LSP diagnostics
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
    -- completion/documentation hints
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
