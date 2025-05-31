return {
  "folke/snacks.nvim",
  vscode = false,
  opts = {
    zen = {
      -- make the buffer behind the zen buffer to not be shown
      win = { backdrop = { transparent = false } },
      -- if you still wants transparency, adjust the transparency level
      -- via blend (the lesser, the darker)
      -- win = { backdrop = { transparent = true, blend = 10 } },
    },
    dashboard = {
      preset = {
        -- ANSI art from: https://patorjk.com/software/taag/#p=display&f=Delta%20Corps%20Priest%201&t=meleu
        -- font: Delta Corps Priest 1
        header = [[

   ▄▄▄▄███▄▄▄▄      ▄████████  ▄█          ▄████████ ███    █▄  
 ▄██▀▀▀███▀▀▀██▄   ███    ███ ███         ███    ███ ███    ███ 
 ███   ███   ███   ███    █▀  ███         ███    █▀  ███    ███ 
 ███   ███   ███  ▄███▄▄▄     ███        ▄███▄▄▄     ███    ███ 
 ███   ███   ███ ▀▀███▀▀▀     ███       ▀▀███▀▀▀     ███    ███ 
 ███   ███   ███   ███    █▄  ███         ███    █▄  ███    ███ 
 ███   ███   ███   ███    ███ ███▌    ▄   ███    ███ ███    ███ 
  ▀█   ███   █▀    ██████████ █████▄▄██   ██████████ ████████▀  
                              ▀                                 
]],
      },
    },
  },
}
