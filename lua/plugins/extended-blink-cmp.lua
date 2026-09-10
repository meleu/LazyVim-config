return {
  "saghen/blink.cmp",
  -- NOTE: config added so <Enter> means an actual <Enter>
  -- (and not accepting a completion)
  opts = {
    keymap = {
      preset = "default",
    },
    completion = {
      menu = {
        -- add a delay before showing the completion menu
        auto_show_delay_ms = 1000,

        --disaable menu auto show (still accessible via `<C-space>`)
        -- auto_show = false
      }
    }
  },
}
