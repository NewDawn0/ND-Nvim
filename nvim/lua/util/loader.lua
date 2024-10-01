--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Abbrev
local api = vim.api

-- Setup module
local M = {}
M.loaded_plugins = {}

-- Load config
local function load_cfg(plugin, plugins)
  if not M.loaded_plugins[plugin] then
    -- Check for dependencies and load them first
    local data = plugins[plugin]
    if data.deps then
      for dep, _ in pairs(data.deps) do
        load_cfg(dep, data.deps)
      end
    end
    -- Load the plugin
    vim.cmd("packadd " .. plugin)
    if data.config and type(data.config) == "function" then data.config() end
    M.loaded_plugins[plugin] = true
  end
end

-- Initializer function
local function setup_hooks(plugins)
  for plugin, data in pairs(plugins) do
    -- Non lazy loaded plugins
    if not data.lazy or data.lazy == false then
      load_cfg(plugin, plugins)
    -- Lazy loaded plugins on event
    elseif data.lazy then
      if data.lazy.event then
        api.nvim_create_autocmd(data.lazy.event, {
          pattern = "*",
          callback = function() load_cfg(plugin, plugins) end,
        })
      end
    -- Lazy loaded plugins on keybind
    elseif data.lazy.keys then
      for _, key in ipairs(data.lazy.keys) do
        api.nvim_set_keymap("n", key, "", {
          noremap = true,
          silent = true,
          callback = function()
            load_cfg(plugin, plugins)
            -- Trigger keymap on plugin load
            api.nvim_feedkeys(api.nvim_replace_termcodes(key, true, true, true), "n", true)
          end,
        })
      end
    -- Lazy loaded plugins on filetype
    elseif data.lazy.ft then
      api.nvim_create_autocmd("FileType", {
        pattern = data.lazy.ft,
        callback = function() load_cfg(plugin, plugins) end,
      })
    end
  end
end

-- Lazy like info screen
local function loader_ui(plugins)
  -- Get dimensions
  local ui = api.nvim_list_uis()[1]
  local width = math.floor(ui.width * 0.5)
  local height = math.floor(ui.height * 0.5)
  local row = math.floor((ui.height - height) / 2)
  local col = math.floor((ui.width - width) / 2)

  local buf = api.nvim_create_buf(false, true)
  local lines = { "ND-Nvim PkgLoader 🚀", "" }
  for plugin, data in pairs(plugins) do
    -- Insert plugin into plugin manager window
    local sign = "x"
    if M.loaded_plugins[plugin] then sign = "✓" end
    table.insert(lines, sign .. " Plugin: " .. plugin)
    if data.lazy then
      if data.lazy.event then
        table.insert(lines, "  Event: " .. table.concat(data.lazy.event, ", "))
      elseif data.lazy.keys then
        table.insert(lines, "  Keybinds: " .. table.concat(data.lazy.keys, ", "))
      elseif data.lazy.ft then
        table.insert(lines, "  Filetypes: " .. table.concat(data.lazy.ft, ", "))
      elseif data.lazy.cmd then
        table.insert(lines, "  Command: " .. table.concat(data.lazy.command, ", "))
      end
    else
      table.insert(lines, "  Loaded: Immediately")
    end
    table.insert(lines, "")
  end
  api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  local win = api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  })
  -- Set keybinds
  api.nvim_buf_set_keymap(buf, "n", "q", ":close<CR>", { noremap = true, silent = true })
  api.nvim_buf_set_option(buf, "bufhidden", "wipe")
end

-- Setup function
M.setup = function(config)
  setup_hooks(config)
  api.nvim_create_user_command("NDNvimLoader", function() loader_ui(config) end, {})
end

-- Return
return M
