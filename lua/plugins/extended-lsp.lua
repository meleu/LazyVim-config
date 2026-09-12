return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      regols = { enabled = false },
      ["*"] = {
        keys = {
          -- I want to use gr for "Go Replace" (ReplaceWithRegister plugin)
          { "gr", false },

          -- use gR to "Go to References"
          {
            "gR",
            function()
              Snacks.picker.lsp_references()
            end,
            nowait = true,
            desc = "References",
          },

          -- use gh to "hover documentation"
          { "gh", vim.lsp.buf.hover, desc = "Hover" },
        },
      },
    },
  },
}
