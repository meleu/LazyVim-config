-- Claude-powered keymaps (only when the `claude` CLI is available)
if vim.fn.executable("claude") == 0 then
  return
end

-- one-shot: have Claude (Sonnet) document the visual selection in place
local function claude_document_selection()
  local file = vim.api.nvim_buf_get_name(0)
  if file == "" then
    vim.notify("Buffer has no file on disk", vim.log.levels.WARN)
    return
  end

  local start_line, end_line = vim.fn.line("v"), vim.fn.line(".")
  if start_line > end_line then
    start_line, end_line = end_line, start_line
  end
  vim.api.nvim_feedkeys(vim.keycode("<Esc>"), "nx", false)

  -- Claude edits the file on disk, so flush pending changes first
  vim.cmd("silent update")

  local prompt =
    string.format("@%s#L%d-%d add top-level documentation right above these lines", file, start_line, end_line)
  local cmd = { "claude", "-p", "--model", "sonnet", "--allowedTools", "Read,Edit" }

  vim.notify(string.format("Claude is documenting lines %d-%d...", start_line, end_line))

  -- visual hint: highlight the selection while Claude is working
  local buf, ns = vim.api.nvim_get_current_buf(), vim.api.nvim_create_namespace("claude_document")
  vim.api.nvim_buf_set_extmark(buf, ns, start_line - 1, 0, {
    end_row = end_line - 1,
    line_hl_group = "Visual",
    virt_text = { { " 󰚩 Claude is working... ", "DiagnosticVirtualTextInfo" } },
  })
  vim.system(
    cmd,
    {
      stdin = prompt,
      text = true,
    },
    vim.schedule_wrap(function(result)
      vim.api.nvim_buf_clear_namespace(buf, ns, 0, -1)
      if result.code ~= 0 then
        vim.notify("Claude failed:\n" .. (result.stderr or ""), vim.log.levels.ERROR)
        return
      end
      vim.cmd("checktime")
      vim.notify("Claude finished documenting " .. vim.fn.fnamemodify(file, ":."))
    end)
  )
end

vim.keymap.set("x", "<leader>aD", claude_document_selection, { desc = "Document selection" })
