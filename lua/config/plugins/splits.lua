--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: splits.lua
  Desc: Buffer splits config
--]]
require('smart-splits').setup({
      ignored_buftypes = { 'NvimTree', 'alpha', 'aerial' },
      resize_mode = {
          hooks = {
              on_leave = require('bufresize').register
          }
      }
})
