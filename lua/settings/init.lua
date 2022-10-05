local opt = vim.opt
local g = vim.g

-- Statusline
opt.laststatus = 3
opt.showmode = false

-- Indenting
opt.smarttab = true
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4

opt.clipboard = "unnamedplus"
opt.fillchars = { eob = " " }
opt.mouse = "a"

-- Search
opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false
vim.cmd("set nu rnu") -- hybrid number
opt.hidden = true

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true
opt.undolevels = 1000
opt.wrap = false
opt.fileencoding = 'utf-8'
vim.cmd("filetype on")

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- Disable some plugins
local default_plugins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
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
  "ftplugin",
}
for _, plugin in pairs(default_plugins) do
  g["loaded_" .. plugin] = 1
end
