--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: colorizer.lua
  Desc: Highlight hexcolourschemes config
--]]
require('colorizer').setup({
    filetypes = { '*' },
    user_default_options = {
        names = false,
        RRGGBBAA = true,
        AARRGGBB = true,
    }
})
