local M = {}

function M.is_file_readable(path)
  return vim.fn.filereadable(vim.fs.normalize(path)) == 1
end

return M
