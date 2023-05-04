--[[
 _   _ ____        _   _       _
| \ | |  _ \      | \ | |_   _(_)_ __ ___
|  \| | | | |_____|  \| \ \ / / | '_ ` _ \
| |\  | |_| |_____| |\  |\ V /| | | | | | |
|_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
File: chadrc.lua
Desc: NvChad config file
--]]
---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

-- Modules
require "custom.command"
require "custom.autocmds"

M.ui = {
    theme = "everblush",
    theme_toggle = { "everblush", "one_light" },

    hl_override = highlights.override,
    hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
