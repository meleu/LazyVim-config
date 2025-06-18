return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  opts = {
    filetypes = {
      -- disable for markdown, json and text files
      markdown = false,
      json = false,
      text = false,
      sh = function()
        -- disable for .env files
        if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), "^%.env.*") then
          return false
        end
        return true
      end,
    },
  },
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
