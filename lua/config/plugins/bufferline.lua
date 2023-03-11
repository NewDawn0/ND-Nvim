--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: bufferline.lua
  Desc: Buffer bar config
--]]
require('bufferline').setup({
    options = {
        show_close_icon = true,
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_tab_indicators = true,
        diagnostics = "nvim_lsp",
        offsets = {
            { filetype = "NvimTree", text = "File Explorer", separator = true, padding = 1 },
            { filetype = "aerial", text = "Code Outline", separator = true, padding = 1 },
        },
        groups = {
            options = { toggle_hidden_on_enter = true },
            items = {
                { name = 'Config', icon = "",
                    highlight = {underline = true, sp = "blue"},
                    priority = 2,
                    matcher = function (buf)
                        return buf.filename:match('%.toml') or buf.filename:match('%.json') or buf.filename:match('%.yml')
                    end
                },
                { name = 'Docs', icon = "󰷈",
                    highlight = {underline = true, sp = "yellow"},
                    priority = 3,
                    matcher = function (buf)
                        return buf.filename:match('%.md') or buf.filename:match('%.txt') or buf.filename:match('%.1')
                    end
                },
            }
        }
    },
})
