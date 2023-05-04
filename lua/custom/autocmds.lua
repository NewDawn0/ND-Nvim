--[[
 _   _ ____        _   ___     ___
| \ | |  _ \      | \ | \ \   / (_)_ __ ___
|  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
| |\  | |_| |_____| |\  | \ V / | | | | | | |
|_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
File: command.lua
Desc: Custom commands
--]]
-- Aliases
local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.cmd
local fn = vim.fn

-- Highlight on yank
autocmd("TextYankPost", {
    callback = function() vim.highlight.on_yank { timeout = 300 } end,
})
-- Return to position when opening files
autocmd("BufReadPost", {
    callback = function()
        if fn.line "'\"" > 0 and fn.line "'\"" <= fn.line "$" then
            fn.setpos(".", fn.getpos "'\"")
            cmd "silent! foldopen"
        end
    end,
})
