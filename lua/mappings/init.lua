--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: mappings.lua
  Desc: Keymaps
--]]
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true, nowait = true }
local bufopts = { noremap = true, silent = true, buffer = bufnr }
local g = vim.g

g.mapleader = ' '
-- Write and save
map('n', '<LEADER>w', '<CMD>w<CR>', opts)
map('n', '<LEADER>h', '<CMD>nohlsearch<CR>', opts)

-- File
map('n', '<LEADER>ff', '<CMD>Telescope find_files<CR>', opts)
map('n', '<LEADER>fa', '<CMD>Telescope find_files follow=true no_ignore=true hidden=true<CR>', opts)
map('n', '<LEADER>fw', '<CMD>Telescope live_grep<CR>', opts)
map('n', '<LEADER>fn', '<CMD>enew<CR>', opts)
-- Git
map('n', '<LEADER>gc', '<CMD>Telescope git_commits<CR>', opts)
map('n', '<LEADER>gs', '<CMD>Telescope git_status<CR>', opts)
-- Terminal
map('n', '<LEADER>tt', '<CMD>ToggleTerm direction=horizontal<CR>', opts)
map('n', '<LEADER>tf', '<CMD>ToggleTerm direction=float<CR>', opts)
map('n', '<LEADER>tv', '<CMD>ToggleTerm direction=vertical<CR>', opts)
map('n', '<LEADER>tb', '<CMD>ToggleTerm direction=tab<CR>', opts)
-- Buffer
map('n', '<LEADER>bn', '<CMD>bnext<CR>', opts)
map('n', '<LEADER>bN', '<CMD>new<CR>', opts)
map('n', '<LEADER>bp', '<CMD>bprevious<CR>', opts)
map('n', '<LEADER>bc', '<CMD>lua require("bufdelete").bufdelete(0, true)<CR>', opts)
map('n', '<LEADER>bk', '<CMD>bwipeout<CR>', opts)
map('n', '<LEADER>bf', '<CMD>Telescope buffers<CR>', opts)
map('n', '<LEADER>bK', '<CMD>%bwipeout|edit #|normal `"<CR>', opts)
map('n', '<LEADER>bs', '<CMD>BufferLinePick<CR>', opts)
map('n', '<LEADER>bS', '<CMD>Scratch<CR>', opts)
map('n', '<LEADER>bP', '<CMD>BufferLineTogglePin<CR>', opts)
-- Packages
map('n', '<LEADER>pl', '<CMD>Lazy<CR>', opts)
map('n', '<LEADER>ps', '<CMD>Lazy sync<CR>', opts)
map('n', '<LEADER>pc', '<CMD>Lazy clean<CR>', opts)
map('n', '<LEADER>pC', '<CMD>Lazy check<CR>', opts)
map('n', '<LEADER>pu', '<CMD>Lazy update<CR>', opts)
map('n', '<LEADER>pp', '<CMD>Lazy profile<CR>', opts)
-- Minimap + Filebrowser
map('n', '<LEADER>ee', '<CMD>NvimTreeToggle<CR>', opts)
map('n', '<LEADER>ef', '<CMD>NvimTreeFocus<CR>', opts)
map('n', '<LEADER>ec', '<CMD>NvimTreeClos<CR>', opts)
map('n', '<LEADER>ea', '<CMD>AerialToggle right<CR>', opts)
map('n', '<LEADER>ec', '<CMD>AerialClose<CR>', opts)
-- diagnostics
map('n', '<LEADER>do', '<CMD>lua vim.diagnostic.open_float()<CR>', opts)
map('n', '<LEADER>dn', '<CMD>lua vim.diagnostic.goto_next()<CR>', opts)
map('n', '<LEADER>dp', '<CMD>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', '<LEADER>dl', '<CMD>lua vim.diagnostic.setloclist()<CR>', opts)
map('n', '<LEADER>ds', '<CMD>lua vim.lsp.buf.signature_help()<CR>', bufopts)
map('n', '<LEADER>dD', '<CMD>lua vim.lsp.buf.definition()<CR>', bufopts)
map('n', '<LEADER>dd', '<CMD>lua vim.lsp.buf.declaration()<CR>', bufopts)
map('n', '<LEADER>dh', '<CMD>lua vim.lsp.buf.hover()<CR>', bufopts)
map('n', '<LEADER>di', '<CMD>lua vim.lsp.buf.implementation()<CR>', bufopts)
map('n', '<LEADER>dr', '<CMD>Rename<CR>', bufopts)
map('n', '<LEADER>dR', '<CMD>lua vim.lsp.buf.references()<CR>', bufopts)
map('n', '<LEADER>dc', '<CMD>lua vim.lsp.buf.code_action()<CR>', bufopts)
map('n', '<LEADER>df', '<CMD>Format<CR>', bufopts)
-- workspace
map('n', '<LEADER>wl', '<CMD>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', bufopts)
map('n', '<LEADER>wa', '<CMD>lua vim.lsp.buf.add_workspace_folder()<CR>', bufopts)
map('n', '<LEADER>wr', '<CMD>lua vim.lsp.buf.remove_workspace_folder()<CR>', bufopts)
-- Splits
map('n', '<C-Left>', '<CMD>lua require("smart-splits").resize_left(3)<CR>', opts)
map('n', '<C-Down>', '<CMD>lua require("smart-splits").resize_down(3)<CR>', opts)
map('n', '<C-Up>', '<CMD>lua require("smart-splits").resize_up(3)<CR>', opts)
map('n', '<C-Right>', '<CMD>lua require("smart-splits").resize_right(3)<CR>', opts)
map('n', '<C-h>', '<CMD>TmuxNavigateLeft<CR>', opts)
map('n', '<C-l>', '<CMD>TmuxNavigateRight<CR>', opts)
map('n', '<C-j>', '<CMD>TmuxNavigateDown<CR>', opts)
map('n', '<C-k>', '<CMD>TmuxNavigateUp<CR>', opts)
-- Misc
map('n', '<LEADER>as', '<CMD>ASToggle<CR>', opts)
map('n', 'gcc', '<CMD>CommentToggle<CR>', opts)
map('v', 'gcc', "<CMD>'<,'>CommentToggle<CR>", opts)
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
