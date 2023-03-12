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
map('n', '<leader>w', '<Cmd>w<Cr>', opts)
map('n', '<leader>h', '<Cmd>nohlsearch<Cr>', opts)

-- File
map('n', '<leader>ff', '<Cmd>Telescope find_files<Cr>', opts)
map('n', '<leader>fa', '<Cmd>Telescope find_files follow=true no_ignore=true hidden=true<Cr>', opts)
map('n', '<leader>fw', '<Cmd>Telescope live_grep<Cr>', opts)
map('n', '<leader>fn', '<Cmd>enew<Cr>', opts)
-- Git
map('n', '<leader>gc', '<Cmd>Telescope git_commits<Cr>', opts)
map('n', '<leader>gs', '<Cmd>Telescope git_status<Cr>', opts)
-- Terminal
map('n', '<leader>tt', '<Cmd>ToggleTerm direction=horizontal<Cr>', opts)
map('n', '<leader>tf', '<Cmd>ToggleTerm direction=float<Cr>', opts)
map('n', '<leader>tv', '<Cmd>ToggleTerm direction=vertical<Cr>', opts)
map('n', '<leader>tb', '<Cmd>ToggleTerm direction=tab<Cr>', opts)
-- Buffer
map('n', '<leader>bn', '<Cmd>bnext<Cr>', opts)
map('n', '<leader>bN', '<Cmd>new<Cr>', opts)
map('n', '<leader>bp', '<Cmd>bprevious<Cr>', opts)
map('n', '<leader>bc', '<Cmd>lua require("bufdelete").bufdelete(0, true)<Cr>', opts)
map('n', '<C-c>', '<Cmd>lua require("bufdelete").bufdelete(0, true)<Cr>', opts)
map('n', '<leader>bk', '<Cmd>bwipeout<Cr>', opts)
map('n', '<leader>bf', '<Cmd>Telescope buffers<Cr>', opts)
map('n', '<leader>bK', '<Cmd>%bwipeout|edit #|normal `"<Cr>', opts)
map('n', '<leader>bs', '<Cmd>BufferLinePick<Cr>', opts)
map('n', '<leader>bS', '<Cmd>Scratch<Cr>', opts)
map('n', '<leader>bP', '<Cmd>BufferLineTogglePin<Cr>', opts)
-- Packages
map('n', '<leader>pl', '<Cmd>Lazy<Cr>', opts)
map('n', '<leader>ps', '<Cmd>Lazy sync<Cr>', opts)
map('n', '<leader>pc', '<Cmd>Lazy clean<Cr>', opts)
map('n', '<leader>pC', '<Cmd>Lazy check<Cr>', opts)
map('n', '<leader>pu', '<Cmd>Lazy update<Cr>', opts)
map('n', '<leader>pp', '<Cmd>Lazy profile<Cr>', opts)
-- Minimap + Filebrowser
map('n', '<leader>ee', '<Cmd>NvimTreeToggle<Cr>', opts)
map('n', '<leader>ef', '<Cmd>NvimTreeFocus<Cr>', opts)
map('n', '<leader>ec', '<Cmd>NvimTreeClos<Cr>', opts)
map('n', '<leader>ea', '<CMD>AerialToggle right<Cr>', opts)
map('n', '<leader>eac', '<CMD>AerialClose<Cr>', opts)
-- diagnostics
map('n', '<leader>do', '<Cmd>lua vim.diagnostic.open_float()<Cr>', opts)
map('n', '<leader>dn', '<Cmd>lua vim.diagnostic.goto_next()<Cr>', opts)
map('n', '<leader>dp', '<Cmd>lua vim.diagnostic.goto_prev()<Cr>', opts)
map('n', '<leader>dl', '<Cmd>lua vim.diagnostic.setloclist()<Cr>', opts)
map('n', '<leader>ds', '<Cmd>lua vim.lsp.buf.signature_help()<Cr>', bufopts)
map('n', '<leader>dd', '<Cmd>lua vim.lsp.buf.definition()<Cr>', bufopts)
map('n', '<leader>dD', '<Cmd>lua vim.lsp.buf.declaration()<Cr>', bufopts)
map('n', '<leader>dh', '<Cmd>lua vim.lsp.buf.hover()<Cr>', bufopts)
map('n', '<leader>di', '<Cmd>lua vim.lsp.buf.implementation()<Cr>', bufopts)
map('n', '<leader>dh', '<Cmd>lua vim.lsp.buf.signature_help()<Cr>', bufopts)
map('n', '<leader>dr', '<Cmd>lua vim.lsp.buf.rename()<Cr>', bufopts)
map('n', '<leader>dR', '<Cmd>lua vim.lsp.buf.references()<Cr>', bufopts)
map('n', '<leader>dc', '<Cmd>lua vim.lsp.buf.code_action()<Cr>', bufopts)
map('n', '<leader>df', '<Cmd>Format<Cr>', bufopts)
-- workspace
map('n', '<leader>wl', '<Cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<Cr>', bufopts)
map('n', '<leader>wa', '<Cmd>lua vim.lsp.buf.add_workspace_folder()<Cr>', bufopts)
map('n', '<leader>wr', '<Cmd>lua vim.lsp.buf.remove_workspace_folder()<Cr>', bufopts)
-- Splits
map('n', '<C-Left>', '<Cmd>lua require("smart-splits").resize_left(3)<CR>', opts)
map('n', '<C-Down>', '<Cmd>lua require("smart-splits").resize_down(3)<CR>', opts)
map('n', '<C-Up>', '<Cmd>lua require("smart-splits").resize_up(3)<CR>', opts)
map('n', '<C-Right>', '<Cmd>lua require("smart-splits").resize_right(3)<CR>', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-j>', '<C-w>j', opts)
-- Misc
map('n', '<leader>as', '<Cmd>ASToggle<CR>', opts)
map('n', 'gcc', '<Cmd>CommentToggle<Cr>', opts)
map('v', 'gcc', "<Cmd>'<,'>CommentToggle<Cr>", opts)
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
