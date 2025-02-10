return {
  "zbirenbaum/copilot.lua",
  -- TODO:
  -- - find a way to toggle copilot
  -- - disable for markdown and text files

  keys = {
    { "<leader>cpd", ":Copilot disable<cr>", desc = "GitHub Copilot Disable" },
    { "<leader>cpe", ":Copilot enable<cr>", desc = "GitHub Copilot Enable" },
  },
}
