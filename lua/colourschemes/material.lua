--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: material.lua
  Desc: Material colourscheme config
--]]
-- Styles: Oceanic, Deep ocean, Palenight, Lighter, Darker
local g = vim.g
g.material_style = 'deep ocean'

local colors = require('material.colors')
local custom = {
    -- Normal
    white = "#efefef",
    gray = '#758094',
    black = '#202023',
    red = '#ec7279',
    yellow = '#deb974',
    green = '#a0c980',
    blue = '#6cb6eb',
    paleblue = '#B0C9FF',
    cyan = '#5dbbc1',
    purple = '#d38aea',
    orange = '#e78c6c',
    -- Dark
    darkred = '#dc6086',
    darkgreen = '#80c570',
    darkyellow = '#d6b455',
    darkblue = '#6e98eb',
    darkcyan = '#4dabb1',
    darkpurple = '#b480d6',
    darkorange = '#e2795b',
    -- BG
    bg = '#14171a',
    bg_alt = '#090b10',
    bg_dim = '#252630',
    bg_0 = '#2b2d3a',
    bg_1 = '#333648',
    bg_2 = '#363a4e',
    bg_3 = '#393e53',
    bg_4 = '#3f445b',
    fg = '#c5cdd9',
    fg_alt = '#c5cdc9',
    -- Misc
    selection = '#1f2233',
    contrast = '#090b10',
    active = '#1a1c25',
    border = '#232637',
    line_numbers = '#3b3f51',
    highlight = '#1f2233',
    disabled = '#464b5d',
    accent = '#ec7279',
    comments = '#464b5d'
}

require('material').setup({
    contrast = {
        sidebars = true,
        floating_windows = true,
        cursor_line = true,
        non_current_windows = false
    },
    styles = {
        strings = { italic = true },
        keywords = { bold = true },
        functions = { bold = true }
    },
    plugins = {
        "gitsigns", "nvim-cmp",
        "telescope", "which-key",
        "nvim-cmp", "nvim-web-devicons",
        "indent-blankline"
    },
    disable = {
        colored_cursor = true
    }
})
