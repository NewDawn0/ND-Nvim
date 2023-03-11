--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: settings.lua
  Desc: General settings 
--]]
-- Aliases
local opt = vim.opt

-- Qualitiy of life settings
opt.backup = false      			-- Disable backup
opt.clipboard = 'unnamedplus'		-- Connect to system clipboard
opt.mouse = 'a'                     -- Set mouse
opt.termguicolors = true            -- Set termgui colors
opt.scrolloff = 4                   -- Set scrolloff
opt.smd = false                     -- Disable mode message
opt.timeout = false                 -- Disable timeout

-- Indent
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
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- File stuff --
opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true
opt.undolevels = 1000
opt.wrap = false
opt.encoding = 'utf-8'

-- interval for writing to disk, required by gitsings as well
opt.updatetime = 250

-- Disable default plugins --
local default_plugins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "syntax",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin"
}
for _, plugin in pairs(default_plugins) do
  vim.g["loaded_" .. plugin] = 1
end
