return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    -- disable <cr> to accept completion
    -- enable <tab> and <S-tab> to navigate completion menu
    local cmp = require("cmp")
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<Tab>"] = cmp.mapping.select_next_item(),
      ["<S-Tab>"] = cmp.mapping.select_prev_item(),
      ["<cr>"] = function(fallback)
        cmp.abort()
        fallback()
      end,
    })

    -- enable borders for completion menu
    opts.window = {
      completion = cmp.config.window.bordered(),
    }
  end,
}
