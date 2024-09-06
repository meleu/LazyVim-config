return {
  "jellydn/hurl.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  ft = "hurl",
  opts = {
    -- show debugging info
    debug = false,
    -- show notification on run
    show_notification = false,
    -- show response in popup or split
    mode = "popup",
    env_file = { "staging.env" },
    -- default formatter
    formatters = {
      json = { "jq" },
      html = {
        "prettier",
        "--parser",
        "html",
      },
      xml = {
        "tidy",
        "-xml",
        "-i",
        "-q",
      },
    },
  },
  keys = {
    { "<leader>hr", ":HurlRunner<cr>", desc = "hurl all requests" },
    { "<leader>h", ":HurlRunner<cr>", desc = "hurl runner", mode = "v" },
    { "<leader>ht", ":HurlToggleMode<cr>", desc = "hurl toggle mode" },
    -- These commands are buggy
    -- { "<leader>hR", ":HurlRunnerAt<cr>", desc = "hurl request under cursor" },
    -- { "<leader>hT", ":HurlRunnerToEntry<cr>", desc = "hurl request 'til cursor" },
    -- { "<leader>hv", ":HurlVerbose<cr>", desc = "hurl in verbose mode" },
  },
}
