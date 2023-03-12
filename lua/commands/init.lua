--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: init.lua
  Desc: Set commands autocommands
--]]
-- Aliases
local api = vim.api
local cmd = vim.api.nvim_create_user_command

-- Scratch: Inspired by Emacs' scratch buffer
local function scratch_exists()
    for _, win in ipairs(api.nvim_list_wins()) do
        local buf = api.nvim_win_get_buf(win)
        if api.nvim_buf_get_name(buf):match("[^/]+$") == 'scratch' then
            return win
        end
    end
    return false
end

cmd("Scratch", function()
    local win = scratch_exists()
    if win == false then
        api.nvim_command('vsplit | enew')
        api.nvim_buf_set_option(0, 'buftype', 'nofile')
        api.nvim_buf_set_option(0, 'bufhidden', 'wipe')
        api.nvim_buf_set_name(0, 'scratch')
    else
        api.nvim_set_current_win(win)
    end
end, {})

-- format
cmd("Format", function()
    vim.lsp.buf.format { async = true }
end, {})
