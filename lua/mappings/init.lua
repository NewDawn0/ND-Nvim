local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local vimap = vim.keymap.set

-- General
vim.g.mapleader = ' '                                                   -- Leader key
map('n', '<leader>w', ':w<CR>', opts)                                   -- Save
map('n', '<leader>wq', ':wq<CR>', opts)                                 -- Save and Quit
-- Terminal
map('n', '<leader>tt', ':ToggleTerm direction=horizontal<CR>', opts)    -- ToogleTerm
map('n', '<leader>tf', ':ToggleTerm<CR>', opts)                         -- ToggleTerm
-- Files
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)                      -- NvimTree
map('n', '<leader>as', ':ASToggle<CR>', opts)                           -- AutoSave
map('n', '<leader>ff', ':Telescope find_files<CR>', opts)               -- Telescope find files
map('n', '<leader>fa', ':Telescope find_files follow=true no_ignore=true hidden=true<CR>', opts)  -- Telescope find all files
map('n', '<leader>fw', ':Telescope live_grep<CR>', opts)                -- Telescope live grep
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)                  -- Telescope buffers
map('n', '<leader>gc', ':Telescope git_commits<CR>', opts)             -- Telescope buffers
map('n', '<leader>gs', ':Telescope git_status<CR>', opts)              -- Telescope buffers
-- LSP stuff
vimap('n', '<space>d', vim.diagnostic.open_float, opts)                 -- Open diagnostics
vimap('n', '[d', vim.diagnostic.goto_prev, opts)                        -- Go to previous diagnostic
vimap('n', ']d', vim.diagnostic.goto_next, opts)                        -- Go to next diagnostic
vimap('n', '<space>q', vim.diagnostic.setloclist, opts)                 -- Close diagnostics
-- Reserved keys { gD, gd, K , gi, <C-k>, <leader>D, <leader>rn, <leader>ca, gr, <leader>fo }
