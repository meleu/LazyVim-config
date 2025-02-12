return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
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
          prompt = "> /COPILOT_GENERATE\n\nRefactor selected code to improve readability and maintainability.",
        },
        Review = {
          prompt = "> /COPILOT_REVIEW\n\nReview the selected code, with a special attention to its readability/maintainability.",
        },
      },
    },
    keys = {
      {
        -- Tip from here:
        -- https://github.com/CopilotC-Nvim/CopilotChat.nvim?tab=readme-ov-file#tips
        "<leader>ap",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.snacks").pick(actions.prompt_actions())
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
