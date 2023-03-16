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
vim.g.material_style = 'deep ocean'
local colors = require('material.colors')
local cols = require('config.colourschemes.global')

local function ll()
    vim.notify("a")
end

-- Setup
require('material').setup({
    contrast = {
        sidebars = true,
        floating_windows = true,
        cursor_line = true,
        non_current_windows = false
    },
    plugins = {
        "nvim-cmp", "nvim-tree",
        "nvim-web-devicons", "gitsigns",
        "telescope", "which-key",
        "indent-blankline",
    },
    styles = {
        comments = {},
        strings = { italic = true },
        keywords = { bold = true },
        functions = { bold = true },
        variables = {},
        operators = {},
        types = {}
    },
    disable = {
        colored_cursor = true
    },
    custom_colors = function (colors)
        colors.editor.bg = cols.bg
        colors.editor.bg_alt = cols.bg1
        colors.editor.fg = cols.fg1
        colors.editor.fg_dark = cols.fg
        colors.editor.line_numbers = cols.fg
        colors.editor.accent = cols.blue
        -- Override colors
        colors.main.paleblue = cols.pale
        colors.main.cyan = cols.gold
        colors.main.yellow = cols.gold
        colors.main.purple = cols.purple
        -- Colours
        colors.syntax.comments = cols.grey
        colors.syntax.keyword = cols.purple
        colors.syntax.fn = cols.blue
        colors.syntax.type = cols.gold
        colors.syntax.value = cols.red
        colors.syntax.operator = cols.orange
    end
})
