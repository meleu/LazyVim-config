return {
  "zbirenbaum/copilot.lua",
  -- TODO:
  -- - find a way to toggle copilot
  -- - disable for markdown and text files

  keys = {
    {
      "<leader>acd",
      ":Copilot disable<cr>",
      mode = { "n", "v" },
    },
    {
      "<leader>ace",
      ":Copilot enable<cr>",
      mode = { "n", "v" },
    },
  },
}
