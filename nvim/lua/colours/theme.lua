--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Setup module
local M = {}

-- Themes
M.colours = {
  ndnvim = {
    black = "#141b1e",
    gray4 = "#1c2326",
    gray3 = "#232a2d",
    gray2 = "#2e3538",
    gray = "#3a4144",
    white3 = "#c8c8c8",
    white2 = "#d0d0d0",
    white = "#dadada",
    orange = "#ff966c",
    yellow = "#e4c76b",
    green = "#a3c87d",
    cyan = "#0db9d7",
    blue = "#62baff",
    magenta = "#c099ff",
    pink = "#fca7ea",
    red = "#ff757f",
    teal = "#4fd6be",
    gold = "#ffc777",
  },
}

-- Default theme
M.default = M.colours.ndnvim

-- Return module
return M
