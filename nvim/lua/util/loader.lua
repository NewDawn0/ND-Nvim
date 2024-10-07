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
local cmd = vim.cmd

-- Setup module
local M = {}
M.loaded_plugins = {}

-- Load config
local function load_cfg(plugin, plugins)
  -- Check if plugin is not loaded
  if not M.loaded_plugins[plugin] then
    local data = plugins[plugin]
    -- Add non existent plugins to plugin table
    if not plugins[plugin] then plugins[plugin] = {} end
    -- Check for dependencies and load them first
    if data.deps then
      for _, dep in ipairs(data.deps) do
        -- Ensure the dependency exists in plugins
        if not plugins[dep] then plugins[dep] = {} end
        load_cfg(dep, plugins)
      end
    end
    -- Load the plugin
    cmd("packadd " .. plugin)
    if data.config and type(data.config) == "function" then data.config() end
    M.loaded_plugins[plugin] = true
  end
end

-- Initializer function
local function setup_hooks(plugins)
  for plugin, data in pairs(plugins) do
    -- No lazy attr or lazy = false -> load it immediately
    if data.lazy == nil or data.lazy == false then
      load_cfg(plugin, plugins)
    elseif type(data.lazy) == "table" then
      if data.lazy.event then
        api.nvim_create_autocmd(data.lazy.event, {
          pattern = "*",
          callback = function() load_cfg(plugin, plugins) end,
        })
      -- Lazy loaded plugins on keybind
      elseif data.lazy.keys then
        for _, key in ipairs(data.lazy.keys) do
          api.nvim_set_keymap("n", key, "", {
            noremap = true,
            silent = true,
            callback = function()
              load_cfg(plugin, plugins)
              -- Trigger keymap on plugin load
              cmd('call feedkeys("' .. key .. '")')
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
end

-- Lazy like info screen
local function loader_ui(plugins)
  -- Get dimensions
  local ui = api.nvim_list_uis()[1]
  local width = math.floor(ui.width * 0.3)
  local height = math.floor(ui.height * 0.5)
  local row = math.floor((ui.height - height) / 2)
  local col = math.floor((ui.width - width) / 2)

  -- Create buffer
  local buf = api.nvim_create_buf(false, true)
  local lines = { "ND-Nvim PkgLoader 🚀", "" }
  for plugin, data in pairs(plugins) do
    -- Insert plugin into plugin manager window
    local sign = "x"
    if M.loaded_plugins[plugin] then sign = "✓" end
    table.insert(lines, sign .. " Plugin: " .. plugin)
    if data.lazy == nil or data.lazy == false then
      table.insert(lines, "  Loaded: Immediately")
    elseif data.lazy == true then
      table.insert(lines, "  Loaded: Lazily")
    elseif type(data.lazy) == "table" then
      if data.lazy.event then
        table.insert(lines, "  Event: " .. table.concat(data.lazy.event, ", "))
      elseif data.lazy.keys then
        table.insert(lines, "  Keybinds: " .. table.concat(data.lazy.keys, ", "))
      elseif data.lazy.ft then
        table.insert(lines, "  Filetypes: " .. table.concat(data.lazy.ft, ", "))
      end
    end
    if data.deps then
      table.insert(lines, "  Dependencies:")
      for _, dep in ipairs(data.deps) do
        table.insert(lines, "    '-> " .. dep)
      end
    end
    table.insert(lines, "")
  end
  api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  -- Set keybinds
  api.nvim_buf_set_keymap(buf, "n", "q", ":close<CR>", { noremap = true, silent = true })
  api.nvim_buf_set_option(buf, "bufhidden", "wipe")
  api.nvim_buf_set_option(buf, "modifiable", false)
  -- Open the buffer in a floating window
  api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  })
end

-- Setup function
M.setup = function(config)
  setup_hooks(config)
  api.nvim_create_user_command("NDNvimLoader", function() loader_ui(config) end, {})
end

-- Return
return M
