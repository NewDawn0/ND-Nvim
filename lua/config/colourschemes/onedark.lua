--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: onedark.lua
  Desc: Onedark colorscheme config 
--]]

local onedark = require('onedark')
local cols = require('config.colourschemes.global')
onedark.setup({
    style = 'darker',
    code_stlye = {
        comments = 'none',
        strings = 'italic',
        functions = 'bold',
        variables = 'none',
        keywords = 'none'
    },
    diagnostics = {
        darker = false,
        undercurl = true,
        background = true
    },
    colors = {
        black = cols.black,
        bg0 = cols.bg,
        bg1 = cols.bg1,
        purple = cols.purple,
        green = cols.green,
        red = cols.red,
        blue = cols.blue,
        yellow = cols.gold,
        orange = cols.orange,
        cyan = cols.cyan,
        grey = cols.grey,
        dark_red = cols.red2,
        dark_yellow = cols.gold,
        dark_purple = cols.purple,
        dark_cyan = cols.cyan2,
        diff_add = cols.green,
        diff_delete = cols.red,
        diff_change = cols.blue,
        dif_text = cols.blue1
    },
    highlights = {
        ["@keyword"] = { fg = cols.orange},
        ["@function"] = { fg = cols.blue, fmt = "bold" },
        ["function.builtin"] = { fg = cols.blue, fmt = "bold" },
        ["function.macro"] = { fg = cols.blue, fmt = "bold" },
        ["@text"] = { fg = cols.pale },
        ["@variable"] = { fg = cols.red },
    }
})
