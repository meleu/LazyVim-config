return {
  "Wansmer/treesj",
  vscode = true,
  keys = {
    {
      "<leader>ct",
      ":TSJToggle<cr>",
      desc = "Toggle Treesitter Split",
    },
  },
  cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
  opts = function()
    local lang_utils = require("treesj.langs.utils")
    -- opa fmt style: `[1, 2]` / `{"a": 1}`, no padding inside brackets
    local rego_list = lang_utils.set_preset_for_list({
      join = { space_in_brackets = false },
    })

    return {
      -----------------------------
      -- from my original config --
      -----------------------------
      use_default_keymaps = false,
      max_join_length = 240,
      -----------------------------
      langs = {
        rego = {
          array = rego_list,
          -- the braces of a set live in `non_empty_set`, not in `set`
          non_empty_set = rego_list,
          object = lang_utils.set_preset_for_dict({
            join = { space_in_brackets = false },
          }),
          -- call parens are siblings of `fn_args`, so treat the args as a non-bracket node
          fn_args = lang_utils.set_preset_for_args({
            both = { non_bracket_node = true },
          }),
          expr_call = {
            target_nodes = { "fn_args" },
          },
        },
      },
    }
  end,
}
