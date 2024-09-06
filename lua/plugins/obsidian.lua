return {
  "epwalsh/obsidian.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  version = "*", -- using latest release instead of latest commit
  lazy = true,
  -- load only when opening a markdown from the Obsidian vault.
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/src/github/meleudotdev/**.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/src/github/meleudotdev/**.md",
  },
  opts = {
    workspaces = {
      {
        name = "meleu.dev",
        path = "~/src/github/meleudotdev/",
      },
    },
  },
}
