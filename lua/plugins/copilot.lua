return {
  -- TODO: find a way to toggle copilot with the same keymap

  vim.keymap.set("n", "<leader>cpd", ":Copilot disable<cr>", { desc = "GitHub Copilot Disable" }),
  vim.keymap.set("n", "<leader>cpe", ":Copilot enable<cr>", { desc = "GitHub Copilot Enable" }),
}
