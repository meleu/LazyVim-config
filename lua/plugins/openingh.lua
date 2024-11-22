return {
  "Almo7aya/openingh.nvim",
  -- enable it when running from inside VSCode
  vscode = true,

  -- This init function is needed to copy URLs to clipboard.
  -- tip from here:
  -- https://github.com/Almo7aya/openingh.nvim/issues/24#issuecomment-2212536651
  init = function()
    vim.g.openingh_copy_to_register = true
  end,
  keys = {
    -- open in browser
    { "<leader>gBr", ":OpenInGHRepo<cr>", desc = "Open Repo on Browser" },
    { "<leader>gBf", ":OpenInGHFile<cr>", desc = "Open File on GitHub" },
    { "<leader>gBf", ":OpenInGHFileLines<cr>", desc = "Open Lines on GitHub", mode = "v" },

    -- yank to clipboard
    { "<leader>gyr", ":OpenInGHRepo+<cr>", desc = "Yank Repo URL" },
    { "<leader>gyf", ":OpenInGHFile+<cr>", desc = "Yank File URL" },
    { "<leader>gyf", ":OpenInGHFileLines+<cr>", desc = "Yank Lines URL", mode = "v" },
  },
}
