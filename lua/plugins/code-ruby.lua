local lspconfig = require("lspconfig")

return {
  ------------------------------------------------------------------------
  -- lspconfig
  ------------------------------------------------------------------------
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rubocop = {
          cmd = { "bundle", "exec", "rubocop", "--lsp" },
          root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
        },
        solargraph = {
          autoformat = true,
          completion = true,
          diagnostic = true,
          folding = true,
          references = true,
          rename = true,
          symbols = true,
        },
      },
    },
  },
  ------------------------------------------------------------------------
  -- neotest
  ------------------------------------------------------------------------
  -- {
  --   "nvim-neotest/neotest",
  --   opts = {
  --     adapters = {
  --       ["neotest-rspec"] = {
  --         rspec_cmd = function()
  --           return {
  --             -- put the custom command here...
  --           }
  --         end,
  --       },
  --     },
  --   },
  -- },
}
