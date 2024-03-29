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
        ["<leader>/"] = "",
    },
    v = {
        ["<leader>/"] = "",
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
        ["gcc"] = { function() require("Comment.api").toggle.linewise.current() end, "toggle comment", opts = opts },
        ["<leader>h"] = { "<cmd>nohlsearch<CR>", "disable highlight", opts = opts },
        ["<leader>as"] = { "<cmd>ASToggle<CR>", "toggle autosave", opts = opts },
        -- Git
        ["<leader>gc"] = { "<cmd>Telescope git_commits<CR>", "Find git commits", opts = opts },
        ["<leader>gs"] = { "<cmd>Telescope git_status<CR>", "Show git status", opts = opts },
        ["<leader>gf"] = { "<cmd>Telescope git_files<CR>", "Show git files", opts = opts },
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
        ["<leader>pp"] = { "<cmd>Lazy<CR>", "open package manager", opts = opts },
        ["<leader>ps"] = { "<cmd>Lazy sync<CR>", "sync packages", opts = opts },
        ["<leader>pc"] = { "<cmd>Lazy clean<CR>", "clean packages", opts = opts },
        ["<leader>pC"] = { "<cmd>Lazy check<CR>", "check packages", opts = opts },
        ["<leader>pu"] = { "<cmd>Lazy update<CR>", "update packages", opts = opts },
        -- Diagnostic
        ["<leader>dh"] = { "<cmd>Lspsaga show_workspace_diagnostics<CR>", "diagnostics info", opts = opts },
        ["<leader>dn"] = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "goto next diagnostic", opts = opts },
        ["<leader>dp"] = { "<cmd>lua vim.diagnostic.goto_previous()<CR>", "goto previous diagnostic", opts = opts },
        ["<leader>dd"] = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "goto type definition", opts = opts },
        ["<leader>di"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "goto implementation", opts = opts },
        ["<leader>dr"] = { "<cmd>lua vim.lsp.buf.references()<CR>", "goto references", opts = opts },
        ["<leader>dm"] = { "<cmd>Lspsaga outline<CR>", "open map", opts = opts },
        -- Code actions
        ["<leader>ci"] = { "<cmd>Lspsaga hover_doc<CR>", "Get symbol documentation", opts = opts },
        ["<leader>cr"] = { "<cmd>Lspsaga rename ++project<CR>", "rename symbol", opts = opts },
        ["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "code action", opts = opts },
    },
    v = {
        ["<"] = { "<gv", "unindent selection", opts = opts },
        [">"] = { ">gv", "unindent selection", opts = opts },
        ["gcc"] = {
            "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
            "comment toggle",
            opts = opts,
        },
    },
}

-- more keybinds!
return M
