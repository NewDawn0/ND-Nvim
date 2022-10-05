local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '                                                   -- Leader key
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)                      -- NvimTree
map('n', '<leader>as', ':ASToggle<CR>', opts)                           -- AutoSave
map('n', '<leader>tt', ':ToggleTerm direction=horizontal<CR>', opts)    -- ToogleTerm
map('n', '<leader>tf', ':ToggleTerm<CR>', opts)                         -- ToggleTerm
map('n', '<leader>w', ':w<CR>', opts)                                   -- Save
map('n', '<leader>wq', ':wq<CR>', opts)                                 -- Save and Quit
