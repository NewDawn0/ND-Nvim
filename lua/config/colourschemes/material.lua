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

-- Setup
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
