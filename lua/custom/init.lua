--[[
     _   _ ____        _   _       _           
    | \ | |  _ \      | \ | |_   _(_)_ __ ___  
    |  \| | | | |_____|  \| \ \ / / | '_ ` _ \ 
    | |\  | |_| |_____| |\  |\ V /| | | | | | |
    |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
    File: init.lua
    Desc: General nvim settings
--]]

-- Alias
local opt = vim.opt
-- General settings
opt.autoread = true
opt.backup = false
opt.clipboard = 'unnamedplus'
opt.mouse = 'a'
opt.scrolloff = 4
opt.timeout = false
opt.wrap = false
-- Tabs numbers
opt.smarttab = true
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4
-- Line numbers
opt.relativenumber = true
opt.number = true
opt.cursorline = true
opt.cursorlineopt = 'number'
-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
-- Disk invervall
opt.updatetime = 250
