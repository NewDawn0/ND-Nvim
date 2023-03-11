--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: todo-comments.lua
  Desc: Todo comments plugin config
--]]
require('todo-comments').setup({
    keywords = {
        -- Add the RM keyword
        RM = { icon = "󱍮", color = "error", alt = { "REMOVE" }}
    },
    highlight = {
        multiline = false
    }
})
