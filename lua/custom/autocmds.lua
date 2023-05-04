--[[
     _   _ ____        _   _       _           
    | \ | |  _ \      | \ | |_   _(_)_ __ ___  
    |  \| | | | |_____|  \| \ \ / / | '_ ` _ \ 
    | |\  | |_| |_____| |\  |\ V /| | | | | | |
    |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
    File: autocmds.lua
    Desc: Autocommand decl
--]]
-- Aliases
local autocmd = vim.api.nvim_create_autocmd
local cmd = vim.cmd
local fn = vim.fn


-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd ="
})

-- Yank highlight
autocmd("TextYankPost", {
    callback = function ()
        vim.highlight.on_yank{ timeout = 300 }
    end
})

-- Return to last position
autocmd("BufReadPost", {
    callback = function ()
        if fn.line("'\"") > 0 and fn.line("'\"") <= fn.line("$") then
            fn.setpos('.', fn.getpos("'\""))
            cmd("silent! foldopen")
        end
    end
})
