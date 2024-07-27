-- This is a centralized file with the goal to configure rounded borders for
-- different plugins, like:
-- * Mason dialog
-- * hover documentation
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
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- enable borders for completion menu and documentation
      opts.window = {
        completion = {
          border = "rounded",
        },
        documentation = {
          border = "rounded",
        },
      }
    end,
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
}
