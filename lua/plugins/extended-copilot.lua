return {
  "zbirenbaum/copilot.lua",
  -- TODO:
  -- - find a way to toggle copilot
  -- - disable for markdown and text files

  keys = {
    {
      "<leader>cpd",
      ":Copilot disable<cr>",
      mode = { "n", "v" },
    },
    {
      "<leader>cpe",
      ":Copilot enable<cr>",
      mode = { "n", "v" },
    },
  },
}
