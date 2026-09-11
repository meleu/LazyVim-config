return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- LazyVim's sql extra passes --dialect=ansi, which overrides the
    -- dialect set in a project's .sqlfluff. Let the config file decide, and
    -- pass the filename so sqlfluff finds that config relative to the file.
    opts.formatters.sqlfluff = {
      args = { "format", "--stdin-filename", "$FILENAME", "-" },
    }
  end,
}
