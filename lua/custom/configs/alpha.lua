--[[
 _   _ ____        _   ___     ___
| \ | |  _ \      | \ | \ \   / (_)_ __ ___
|  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
| |\  | |_| |_____| |\  | \ V / | | | | | | |
|_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
File: dashboard.lua
Desc: Init screen config
--]]
local dashboard = require "alpha.themes.dashboard"
local logo = {
    "                        ⣀⣤⣶⣿⣿⣶⣤⣀",
    "                    ⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀",
    "                ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉   ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀",
    "            ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉           ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀",
    "            ⣿⣿⣿⣿⠿⠛⠉                   ⠉⠛⠿⣿⣿⣿⣿",
    "███╗   ██╗██████╗       ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
    "████╗  ██║██╔══██╗      ████╗  ██║██║   ██║██║████╗ ████║",
    "██╔██╗ ██║██║  ██║█████╗██╔██╗ ██║██║   ██║██║██╔████╔██║",
    "██║╚██╗██║██║  ██║╚════╝██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
    "██║ ╚████║██████╔╝      ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
    "╚═╝  ╚═══╝╚═════╝       ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
    "            ⣿⣿⣿⣿⣶⣤⣀                   ⣀⣤⣶⣿⣿⣿⣿",
    "            ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀           ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉",
    "                ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀   ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉",
    "                    ⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉",
    "                        ⠉⠛⠿⣿⣿⠿⠛⠉",
}
-- themes: Function, MoreMsg, KeyWord, Question, String, Include, Tag
local theme = "Include"
dashboard.section.header.val = logo
dashboard.section.header.opts.hl = theme
-- Create Buttons
local function button(sc, txt, keybind, keybind_opts)
    local b = dashboard.button(sc, txt, keybind, keybind_opts)
    b.opts.hl = theme
    b.opts.hl_shortcut = theme
    return b
end
dashboard.section.buttons.val = {
    button("Leader + e", "  File Explorer", "<Cmd>NvimTreeToggle<CR>"),
    button("Leader + ff", "  Find File", "<Cmd>Telescope find_files <CR>"),
    button("Leader + fw", "  Find Word", "<Cmd>Telescope live_grep<CR>"),
    button("Leader + tf", "  Open Terminal", "<Cmd>ToggleTerm direction=float<CR>"),
    button("Leader + ps", "勒Reload Plugins", "<Cmd>PackerSync<CR>"),
    button("q", "  Quit", "<Cmd>qa<CR>"),
}
-- Set headline --
local heading = {
    type = "text",
    val = "~ brain.exists() == null; ~",
    opts = {
        position = "center",
        hl = "AlphaComment",
    },
}
-- Set options --
local opts = {
    layout = {
        { type = "padding", val = 5 },
        dashboard.section.header,
        { type = "padding", val = 3 },
        heading,
        { type = "padding", val = 2 },
        dashboard.section.buttons,
    },
    opts = {
        margin = 5,
    },
}
require("alpha").setup(opts)
