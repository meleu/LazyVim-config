-- Omarchy theme integration.
-- Coded by Claude Code/Opus 5
--
-- Loads the theme and helper specs straight from where Omarchy keeps them, so
-- nothing is copied into this repo and they stay up to date with Omarchy.
local is_file_readable = require("config.util").is_file_readable

local theme_file = vim.fn.expand("~/.local/state/omarchy/current/theme/neovim.lua")
-- On systems without Omarchy the theme file doesn't exist and this is a no-op.
if not is_file_readable(theme_file) then
  return {}
end

-- Omarchy's hot-reload plugin re-requires "plugins.theme" to pick up a new theme.
package.preload["plugins.theme"] = function()
  return dofile(theme_file)
end

local omarchy_nvim = "/etc/skel/.config/nvim" -- shipped by the omarchy-nvim package
local transparency_file = omarchy_nvim .. "/plugin/after/transparency.lua"
-- Omarchy's transparency script clears the background of highlight groups so
-- the terminal's background shows through. Every colorscheme change resets those
-- highlights, so run the script again after each ColorScheme event.
if is_file_readable(transparency_file) then
  vim.api.nvim_create_autocmd("ColorScheme", {
    group = vim.api.nvim_create_augroup("omarchy_transparency", { clear = true }),
    callback = function()
      vim.cmd.source(transparency_file)
    end,
  })
end

local specs = vim.deepcopy(dofile(theme_file))

-- Add Omarchy's own plugin specs on top of the current theme's spec:
-- - all-themes.lua: lazy-loaded specs for every theme plugin, so a new theme's
--   colorscheme is already installed when Omarchy switches to it.
-- - omarchy-theme-hotreload.lua: when lazy.nvim fires LazyReload, it reloads
--   "plugins.theme" and applies the new colorscheme without restarting nvim.
-- A file that's missing is skipped.
for _, name in ipairs({ "all-themes.lua", "omarchy-theme-hotreload.lua" }) do
  local file = omarchy_nvim .. "/lua/plugins/" .. name
  if is_file_readable(file) then
    vim.list_extend(specs, dofile(file))
  end
end

-- lazy.nvim only watches lua/plugins, so tell it the theme file changed when
-- Omarchy writes a new theme. That fires LazyReload, which the hot-reload plugin
-- acts on.
local on_theme_file_change = vim.schedule_wrap(function(err)
  if err then
    return
  end
  require("lazy.manage.reloader").reload({
    {
      file = theme_file,
      what = "changed",
    },
  })
end)

-- A local pseudo-plugin (dir points at this config, so there's nothing to
-- download) loaded at startup only to run its config function, which checks the
-- theme file every 2 seconds.
table.insert(specs, {
  name = "omarchy-theme-watcher",
  dir = vim.fn.stdpath("config"),
  lazy = false,
  config = function()
    local interval_ms = 2000
    local poll = assert(vim.uv.new_fs_poll())
    poll:start(theme_file, interval_ms, on_theme_file_change)
  end,
})

return specs
