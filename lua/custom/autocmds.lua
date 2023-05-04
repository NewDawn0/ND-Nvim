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
local api = vim.api
local cmd = api.nvim_create_user_command
local fn = vim.fn
local M = {
    callback = nil,
}
-- :: Util functions ::
-- display input window
function M.win_input(window_name, callback)
    M.callback = callback
    local win = require("plenary.popup").create("", {
        title = window_name,
        style = "minimal",
        pos = "center",
        line = 3,
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        borderhighlight = "RenamerBorder",
        titlehighlight = "RenamerTitle",
        focusable = true,
        width = 26,
        height = 1,
    })
    local opts = { noremap = true, silent = true, nowait = true }
    vim.cmd "normal w"
    vim.cmd "startinsert"
    vim.api.nvim_buf_set_keymap(0, "i", "<Esc>", "<cmd>stopinsert | q! <CR>", opts)
    vim.api.nvim_buf_set_keymap(0, "n", "<Esc>", "<cmd>stopinsert | q! <CR>", opts)
    vim.api.nvim_buf_set_keymap(
        0,
        "i",
        "<Cr>",
        "<cmd>stopinsert | lua require('custom.command').get_input_win_text(" .. win .. ")<CR>",
        opts
    )
end

-- get text from input window
function M.get_input_win_text(win)
    local text = vim.trim(fn.getline ".")
    api.nvim_win_close(win, true)
    if #text > 0 then
        if M.callback then
            M.callback(text)
        else
            vim.notify("No callback function", "error")
        end
    else
        return false
    end
end

-- Check if window exists
local function win_exists(window_name)
    for _, win in ipairs(api.nvim_list_wins()) do
        local buf = api.nvim_win_get_buf(win)
        if api.nvim_buf_get_name(buf):match "[^/]+$" == window_name then return win end
    end
    return false
end

-- :: Commands ::
-- Emacs' scratch buffer
cmd("Scratch", function()
    local win = win_exists "Scratch"
    if win then
        api.nvim_set_current_win(win)
    else
        vim.cmd "vsplit | enew"
        api.nvim_buf_set_option(0, "buftype", "nofile")
        api.nvim_buf_set_option(0, "bufhidden", "wipe")
        api.nvim_buf_set_name(0, "Scratch")
    end
end, {})

-- Imporved :new
cmd("New", function()
    M.win_input("Enter new name", function(text) vim.cmd("new " .. text) end)
end, {})

-- return Modules
return M
