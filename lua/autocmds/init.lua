--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: init.lua
  Desc: Set global autocommands
--]]
-- Aliases
local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.cmd
local fn = vim.fn

-- Highlight yanks --
autocmd("TextYankPost", {
    callback = function() vim.highlight.on_yank{ timeout=300 } end
})
-- Return to last edit position when opening files --
autocmd("BufReadPost", {
    callback = function ()
        if fn.line("'\"") > 0 and fn.line("'\"") <= fn.line("$") then
            fn.setpos('.', fn.getpos("'\""))
            cmd('silent! foldopen')
        end
    end
})

-- Alpha.lua
cmd('autocmd FileType alpha setlocal nofoldenable')

-- Comment toggle
autocmd("BufEnter", {
    callback = function ()
        require('colorizer').attach_to_buffer(0, {})
    end
})
