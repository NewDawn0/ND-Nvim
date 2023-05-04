--[[
 _   _ ____        _   _       _
| \ | |  _ \      | \ | |_   _(_)_ __ ___
|  \| | | | |_____|  \| \ \ / / | '_ ` _ \
| |\  | |_| |_____| |\  |\ V /| | | | | | |
|_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
File: treesitter.lua
Desc: Treesitter configuration
--]]
local options = {
    ensure_installed = { "lua" },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

return options
