return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    -- keymaps
    ------------------------------------------------------------------------
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    -- I want to use gr for "Go Replace" (ReplaceWithRegister plugin)
    keys[#keys + 1] = { "gr", false }

    -- use gR to "Go to References"
    keys[#keys + 1] = { "gR", ":Telescope lsp_references<cr>", desc = "[G]oto [R]eferences" }

    -- use gh to "hover documentation"
    keys[#keys + 1] = { "gh", vim.lsp.buf.hover, desc = "Hover" }

    -- ruby stuff
    ------------------------------------------------------------------------
    local lspconfig = require("lspconfig")
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
    }
  end,
}
