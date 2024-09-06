return {
  "Wansmer/treesj",
  vscode = true,
  keys = {
    {
      "<leader>ct",
      ":TSJToggle<cr>",
      desc = "Toggle Treesitter Join",
    },
  },
  cmd = {
    "TSJToggle",
    "TSJSplit",
    "TSJJoin",
  },
  opts = {
    use_default_keymaps = false,
  },
}
