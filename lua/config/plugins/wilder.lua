--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: wilder.lua
  Desc: Wilder command menu config
--]]
local wilder = require('wilder')
local cols = require('config.colourschemes.global')
-- Setup --
wilder.setup({modes = {':', '/', '?'}})
wilder.set_option('renderer', wilder.popupmenu_renderer(
    wilder.popupmenu_border_theme({
        highlighter = wilder.basic_highlighter(),
        highlights = {
            border = 'Normal',
            accent = wilder.make_hl(
                'WilderAccent', 'Pmenu',
                { {a = 1}, {a = 1}, {foreground = cols.red, bold = true} }
            )
        },
        left = {' ', wilder.popupmenu_devicons()},
        border = 'rounded'
    })
))
