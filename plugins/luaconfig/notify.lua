local notify = require("notify")
local cols = vim.g.stylix_colors
vim.notify = notify
notify.setup({
    stages = "slide",
    timeout = 3000,
    max_height = function() return math.floor(vim.o.lines * 0.75) end,
    max_width = function() return math.floor(vim.o.columns * 0.75) end,
    on_open = function(win) vim.api.nvim_win_set_config(win, {zindex = 100}) end
})
local cols = vim.g.stylix_colors
local hi = function(what, highlight) vim.api.nvim_set_hl(0, what, highlight) end
-- Info
hi("NotifyINFOBorder", {fg = cols.base0B})
hi("NotifyINFOIcon", {fg = cols.base0B})
hi("NotifyINFOTitle", {fg = cols.base0B})
-- Error
hi("NotifyERRORBorder", {fg = cols.base08})
hi("NotifyERRORIcon", {fg = cols.base08})
hi("NotifyERRORTitle", {fg = cols.base08})
-- Trace
hi("NotifyTRACEBorder", {fg = cols.base0C})
hi("NotifyTRACEIcon", {fg = cols.base0C})
hi("NotifyTRACETitle", {fg = cols.base0C})
-- Debug
hi("NotifyDEUBGBorder", {fg = cols.base09})
hi("NotifyDEUBGIcon", {fg = cols.base09})
hi("NotifyDEUBGTitle", {fg = cols.base09})
-- Warn
hi("NotifyWARNBorder", {fg = cols.base0A})
hi("NotifyWARNIcon", {fg = cols.base0A})
hi("NotifyWARNTitle", {fg = cols.base0A})
