--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Abbrev
local g = vim.g
local wo = vim.wo
local opt = vim.opt

-- Globals
g.mapleader = " "
g.autoformat = true
g.loaded_tutor_mode_plugin = 1

-- Buffer
wo.number = true
wo.relativenumber = true

-- Options
opt.autowrite = true
opt.expandtab = true
opt.clipboard = "unnamedplus"
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 2
opt.confirm = false
opt.cursorline = true
opt.fillchars = {
  diff = "╱",
  eob = " ",
  fold = " ",
  foldclose = "",
  foldopen = "",
  foldsep = " ",
}
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 8
opt.foldlevelstart = 8
opt.ignorecase = true
opt.laststatus = 3
opt.mouse = "a"
opt.pumblend = 10
opt.pumheight = 10
opt.scrolloff = 4
opt.shiftround = true
opt.shiftwidth = 2
opt.showmode = false
opt.signcolumn = "yes"
opt.smartindent = true
opt.smoothscroll = true
opt.spelllang = { "en" }
opt.tabstop = 2
opt.termguicolors = true
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200
opt.wildmode = "longest:full,full"
opt.winminwidth = 5
opt.wrap = false
