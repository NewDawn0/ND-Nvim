--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: nvim-autopairs.lua
  Desc: Automatic pair config
--]]
require('nvim-autopairs').setup({
    disable_filetype = { "TelescopePrompt" , "vim", "alpha", "aerial", "NvimTree" }
})
