return {
  "Wansmer/treesj",
  keys = {
    {
      "<leader>ct",
      ":TSJToggle<cr>",
      desc = "Toggle Treesitter Split",
    },
  },
  cmd = {
    "TSJToggle",
    "TSJSplit",
    "TSJJoin",
  },
  opts = { use_default_keymaps = false },
}
