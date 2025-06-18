return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    -- enabled = false,
    opts = {
      -- See Configuration section for options
      -- https://github.com/CopilotC-Nvim/CopilotChat.nvim?tab=readme-ov-file#configuration
      mappings = {
        reset = {
          normal = "<C-c>",
          insert = "<C-c>",
        },
      },
      prompts = {
        Improve = {
          prompt = "Refactor selected code to improve readability and maintainability.",
        },
        Rename = {
          prompt = "Rename the variable in given selection with a more clear and descriptive name.",
        },
        Extract = {
          prompt = "Extract the selected snippet into a separate function/method, with a descriptive name.",
        },
        Review = {
          prompt = "Review the selected code, with a special attention to its readability and maintainability.",
        },
      },
    },
    keys = {
      {
        "<leader>ap",
        function()
          require("CopilotChat").select_prompt()
        end,
        desc = "Prompt Actions",
        mode = { "n", "v" },
      },
      {
        -- "<leader>ccd",
        "<leader>ad",
        ":CopilotChatDocs<cr>",
        desc = "Docs",
        mode = { "v" },
      },
      {
        -- "<leader>ccr",
        "<leader>ar",
        ":CopilotChatReview<cr>",
        desc = "Review",
        mode = { "v" },
      },
      {
        -- "<leader>cci",
        "<leader>ai",
        ":CopilotChatImprove<cr>",
        desc = "Improve",
        mode = { "v" },
      },
    },
  },
}
