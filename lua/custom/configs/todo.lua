--[[
 _   _ ____        _   ___     ___
| \ | |  _ \      | \ | \ \   / (_)_ __ ___
|  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
| |\  | |_| |_____| |\  | \ V / | | | | | | |
|_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
File: todo.lua
Desc: Word highlighting config
--]]
require("todo-comments").setup {
    keywords = {
        -- Add the RM keyword
        RM = { icon = "󱍮", color = "error", alt = { "REMOVE" } },
    },
    highlight = {
        multiline = false,
    },
}
