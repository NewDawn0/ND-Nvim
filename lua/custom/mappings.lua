--[[
 _   _ ____        _   _       _
| \ | |  _ \      | \ | |_   _(_)_ __ ___
|  \| | | | |_____|  \| \ \ / / | '_ ` _ \
| |\  | |_| |_____| |\  |\ V /| | | | | | |
|_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
File: mappings.lua
Desc: Keymap configuration
--]]
---@type MappingsTable
local M = {}
local opts = { noremap = true, silent = true, nowait = true }
M.disabled = {
    n = {
        ["<A-i>"] = "",
        ["<A-v>"] = "",
        ["<A-h>"] = "",
        ["<leader>b"] = "",
        ["<leader>h"] = "",
        ["<leader>ph"] = "",
    },
}
M.general = {
    n = {
        -- Splits
        ["<C-Left>"] = { "<cmd>vertical resize +3<CR>", "Resize splits left", opts = opts },
        ["<C-Up>"] = { "<cmd>horizontal resize +3<CR>", "Resize splits up", opts = opts },
        ["<C-Down>"] = { "<cmd>horizontal resize -3<CR>", "Resize splits down", opts = opts },
        ["<C-Right>"] = { "<cmd>vertical resize -3<CR>", "Resize splits right", opts = opts },
        ["<C-h>"] = { "<cmd>TmuxNavigateLeft<CR>", "Move left", opts = opts },
        ["<C-j>"] = { "<cmd>TmuxNavigateUp<CR>", "Move up", opts = opts },
        ["<C-k>"] = { "<cmd>TmuxNavigateDown<CR>", "Move down", opts = opts },
        ["<C-l>"] = { "<cmd>TmuxNavigateRight<CR>", "Move right", opts = opts },
        -- Misc
        ["gcc"] = { "<cmd>CommentToggle<CR>", "toggle line comment", opts = opts },
        ["<leader>h"] = { "<cmd>nohlsearch<CR>", "disable highlight", opts = opts },
        ["<leader>w"] = { "<cmd>w<CR>", "safe files", opts = opts },
        ["<leader>as"] = { "<cmd>ASToggle<CR>", "toggle autosave", opts = opts },
        -- File + buffers
        ["<leader>ff"] = { "<cmd>Telescope find_files<CR>", "find files", opts = opts },
        ["<leader>fa"] = {
            "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
            "find all files",
            opts = opts,
        },
        ["<leader>fg"] = { "<cmd>Telescope live_grep<CR>", "live grep", opts = opts },
        ["<leader>fn"] = { "<cmd>New<CR>", "new files", opts = opts },
        ["<leader>fb"] = { "<cmd>Telescope buffers<CR>", "new files", opts = opts },
        -- Terminal
        ["<leader>tt"] = {
            "<cmd>lua require('nvterm.terminal').toggle('horizontal')<CR><cmd>set ma<CR>",
            "new files",
            opts = opts,
        },
        ["<leader>tf"] = {
            "<cmd>lua require('nvterm.terminal').toggle('float')<CR><cmd>set ma<CR>",
            "new files",
            opts = opts,
        },
        ["<leader>tv"] = {
            "<cmd>lua require('nvterm.terminal').toggle('vertical')<CR><cmd>set ma<CR>",
            "new files",
            opts = opts,
        },
        -- Buffers
        ["<leader>bn"] = { "<cmd>bnex<CR>", "goto next buffer", opts = opts },
        ["<leader>bp"] = { "<cmd>bprevious<CR>", "goto previous buffer", opts = opts },
        ["<leader>bc"] = { "<cmd>bd<CR>", "close buffer", opts = opts },
        ["<leader>bk"] = { "<cmd>bw<CR>", "kill buffer", opts = opts },
        ["<leader>bS"] = { "<cmd>Scratch<CR>", "open scratch buffer", opts = opts },
        -- Lazy
        ["<leader>p"] = { "<cmd>Lazy<CR>", "open package manager", opts = opts },
        ["<leader>ps"] = { "<cmd>Lazy sync<CR>", "sync packages", opts = opts },
        ["<leader>pc"] = { "<cmd>Lazy clean<CR>", "clean packages", opts = opts },
        ["<leader>pC"] = { "<cmd>Lazy ckeck<CR>", "check packages", opts = opts },
        ["<leader>pu"] = { "<cmd>Lazy update<CR>", "update packages", opts = opts },
    },
    v = {
        ["<"] = { "<gv", "unindent selction", opts = opts },
        [">"] = { ">gv", "unindent selction", opts = opts },
        ["gcc"] = { "<cmd>'<,'>CommentToggle<CR>", "toggle line comment", opts = opts },
    },
}

-- more keybinds!
return M
