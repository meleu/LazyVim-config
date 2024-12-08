return {
  "nvim-neo-tree/neo-tree.nvim",
  -- Configs to show hidden files but omitting the gitignored ones
  -- inspiration from: https://github.com/nvim-neo-tree/neo-tree.nvim/discussions/353#discussioncomment-11420231
  opts = {
    filesystem = {
      filtered_items = {
        -- visible = true,
        hide_gitignored = true,
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
          ".DS_Store",
          "thumbs.db",
        },
      },
    },
  },
}
