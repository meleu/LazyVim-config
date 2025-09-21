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
          prompt = "Extract the selected code into a separate function, with a descriptive name. Put the extracted function right below the current one, and replace the original code with a call to the new function.",
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
        "<leader>ae",
        ":CopilotChatExplain<cr>",
        desc = "Explain",
        mode = { "v" },
      },
      {
        "<leader>ad",
        ":CopilotChatDocs<cr>",
        desc = "Docs",
        mode = { "v" },
      },
      {
        "<leader>ar",
        ":CopilotChatReview<cr>",
        desc = "Review",
        mode = { "v" },
      },
      {
        "<leader>ai",
        ":CopilotChatImprove<cr>",
        desc = "Improve",
        mode = { "v" },
      },
    },
  },
}
