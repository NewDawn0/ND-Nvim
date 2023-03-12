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

-- Format
cmd("Format", function()
    vim.lsp.buf.format { async = true }
end, {})

-- Rename
cmd("Rename", function()
    local notify = require('notify')
    local position_params = vim.lsp.util.make_position_params()
    position_params.oldName = vim.fn.expand("<cword>")

    vim.ui.input({prompt = 'Rename To> ', default = position_params.oldName}, function(input)
        if input == nil then
            notify('[lsp] aborted rename', 'warn', {render = 'minimal'})
            return
        end

        position_params.newName = input
        vim.lsp.buf_request(0, "textDocument/rename", position_params, function(err, result, ...)
            if not result or not result.changes then
                notify(string.format('could not perform rename'), 'error', {
                    title = string.format('[lsp] rename: %s -> %s', position_params.oldName, position_params.newName),
                    timeout = 500
                })
                return
            end

            vim.lsp.handlers["textDocument/rename"](err, result, ...)

            local notification, entries = '', {}
            local num_files, num_updates = 0, 0
            for uri, edits in pairs(result.changes) do
                num_files = num_files + 1
                local bufnr = vim.uri_to_bufnr(uri)

                for _, edit in ipairs(edits) do
                    local start_line = edit.range.start.line + 1
                    local line = api.nvim_buf_get_lines(bufnr, start_line - 1, start_line, false)[1]

                    num_updates = num_updates + 1
                    table.insert(entries, {
                        bufnr = bufnr,
                        lnum = start_line,
                        col = edit.range.start.character + 1,
                        text = line
                    })
                end

                local short_uri = string.sub(vim.uri_to_fname(uri), #vim.fn.getcwd() + 2)
                notification = notification .. string.format('made %d change(s) in %s', #edits, short_uri)
            end

            notify(notification, 'info', {
                title = string.format('[lsp] rename: %s -> %s', position_params.oldName, position_params.newName),
                timeout = 2500
            })

            if num_files > 1 then require("utils").qf_populate(entries, "r") end
        end)
    end)
end, {})
