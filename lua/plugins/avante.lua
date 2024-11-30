return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  opts = {
    ----------------------------------------------------------------------
    -- this is where the configuration goes
    ----------------------------------------------------------------------
    hints = { enabled = false },
    provider = "openai",
    auto_suggestions_provider = "openai",
    openai = {
      -- model = "gpt-4o-mini",
      model = "gpt-4o",
    },
    mappings = {
      suggestion = {
        accept = "<C-y>",
      },
    },
    ----------------------------------------------------------------------
  },
  -- build from source
  build = "make",
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    -- optional, used for icons
    "nvim-tree/nvim-web-devicons",
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
