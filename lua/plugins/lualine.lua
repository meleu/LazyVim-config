return {
  -- removing the clock from the bottom-right (lualine is not a place for a clock)
  "nvim-lualine/lualine.nvim",
  opts = {
    sections = {
      lualine_z = {},
    },
  },
}
