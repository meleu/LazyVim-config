return {
  "folke/snacks.nvim",
  vscode = false,
  -- TODO: remove when https://github.com/folke/snacks.nvim/pull/2955 is merged
  init = function()
    vim.api.nvim_create_autocmd("User", {
      -- trying to make sure this patch runs after snacks has loaded
      pattern = "VeryLazy",
      once = true,
      callback = function()
        local gitbrowse = require("snacks.gitbrowse")
        local get_repo = gitbrowse.get_repo
        gitbrowse.get_repo = function(...)
          return (get_repo(...):gsub("^https://(https?://)", "%1"))
        end
      end,
    })
  end,
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
        -- https://patorjk.com/software/taag/?p=display&f=Emboss&t=meleu&x=none
        -- header = [[
        --  ┏┏ ┏━┛┃  ┏━┛┃ ┃
        --  ┃┃┃┏━┛┃  ┏━┛┃ ┃
        --  ┛┛┛━━┛━━┛━━┛━━┛
        -- ]],
        -- https://patorjk.com/software/taag/?p=display&f=DOS%20Rebel&t=meleu&x=none
        header = [[
                          ████
                         ░░███
 █████████████    ██████  ░███   ██████  █████ ████
░░███░░███░░███  ███░░███ ░███  ███░░███░░███ ░███
 ░███ ░███ ░███ ░███████  ░███ ░███████  ░███ ░███
 ░███ ░███ ░███ ░███░░░   ░███ ░███░░░   ░███ ░███
 █████░███ █████░░██████  █████░░██████  ░░████████
░░░░░ ░░░ ░░░░░  ░░░░░░  ░░░░░  ░░░░░░    ░░░░░░░░
        ]],
        -- https://patorjk.com/software/taag/#p=display&f=Delta%20Corps%20Priest%201&t=meleu
        --         header = [[
        --    ▄▄▄▄███▄▄▄▄      ▄████████  ▄█          ▄████████ ███    █▄
        --  ▄██▀▀▀███▀▀▀██▄   ███    ███ ███         ███    ███ ███    ███
        --  ███   ███   ███   ███    █▀  ███         ███    █▀  ███    ███
        --  ███   ███   ███  ▄███▄▄▄     ███        ▄███▄▄▄     ███    ███
        --  ███   ███   ███ ▀▀███▀▀▀     ███       ▀▀███▀▀▀     ███    ███
        --  ███   ███   ███   ███    █▄  ███         ███    █▄  ███    ███
        --  ███   ███   ███   ███    ███ ███▌    ▄   ███    ███ ███    ███
        --   ▀█   ███   █▀    ██████████ █████▄▄██   ██████████ ████████▀
        --                               ▀
        -- ]],
      },
    },
  },
}
