--[[
 _   _ ____        _   ___     ___
| \ | |  _ \      | \ | \ \   / (_)_ __ ___
|  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
| |\  | |_| |_____| |\  | \ V / | | | | | | |
|_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
File: notify.lua
Desc: Improved notifications config
--]]
local notify = require "notify"
notify.setup {
    stages = "slide",
    timeout = 1500,
    render = "compact",
}
vim.notify = notify
