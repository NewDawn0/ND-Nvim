local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local vimap = vim.keymap.set
local bufopts = { noremap = true, silent = true, buffer = bufnr }
-- General
vim.g.mapleader = ' '                                                                                 -- Leader key
map('n', '<leader>w', '<Cmd>w<CR>', opts)                                                             -- Save
map('n', '<leader>wq', '<Cmd>wq<CR>', opts)                                                           -- Save and quit
map('n', '<leader>h', '<Cmd>nohlsearch<CR>', opts)                                                    -- Disable higlight
map('n', '<leader>n', '<Cmd>enew<CR>', opts)                                                          -- Create new file
map('n', '<C-l>', '<C-w>l', opts)                                                                     -- Remap move left
map('n', '<C-h>', '<C-w>h', opts)                                                                     -- Remap move right 
map('n', '<C-k>', '<C-w>k', opts)                                                                     -- Remap move up 
map('n', '<C-j>', '<C-w>j', opts)                                                                     -- Remap move down 
map('v', '<', '<gv', opts)                                                                            -- Remain in visual mode after insert
map('v', '>', '>gv', opts)                                                                            -- Remain in visual mode after insert
map('n', '#', '<Cmd>CommentToggle<CR>', opts)                                                         -- Toggle comments
-- Split --
map('n', '<C-Left>', '<Cmd>lua require("smart-splits").resize_left(3)<CR>', opts)                     -- Resize left
map('n', '<C-Right>', '<Cmd>lua require("smart-splits").resize_right(3)<CR>', opts)                   -- Resize left
map('n', '<C-Down>', '<Cmd>lua require("smart-splits").resize_down(3)<CR>', opts)                     -- Resize left
map('n', '<C-Up>', '<Cmd>lua require("smart-splits").resize_up(3)<CR>', opts)                         -- Resize left
-- Terminal
map('n', '<leader>tt', '<Cmd>ToggleTerm direction=horizontal<CR>', opts)                              -- ToogleTerm
map('n', '<leader>tf', '<Cmd>ToggleTerm direction=float<CR>', opts)                                   -- ToggleTerm
-- Files
map('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>', opts)                                                -- Toggle NvimTree
map('n', '<leader>o', '<Cmd>NvimTreeFocus<CR>', opts)                                                 -- Focus NvimTree
map('n', '<leader>a', '<CMD>AerialToggle right<CR>', opts)                                            -- Toggle aerial
map('n', '<leader>as', '<Cmd>ASToggle<CR>', opts)                                                     -- Autosave
map('n', '<leader>ff', '<Cmd>Telescope find_files<CR>', opts)                                         -- Telescope find files
map('n', '<leader>fa', '<Cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>', opts)  -- Telescope find all files
map('n', '<leader>fw', '<Cmd>Telescope live_grep<CR>', opts)                                          -- Telescope live grep
map('n', '<leader>fb', '<Cmd>Telescope buffers<CR>', opts)                                            -- Telescope buffers
map('n', '<leader>gc', '<Cmd>Telescope git_commits<CR>', opts)                                        -- Telescope buffers
map('n', '<leader>gs', '<Cmd>Telescope git_status<CR>', opts)                                         -- Telescope buffers
-- Bufferline --
map('n', '<C-p>', '<Cmd>BufferLinePick<CR>', opts)                                                    -- Pick
map('n', '<C-u>', '<Cmd>BufferLineTogglePin<CR>', opts)                                               -- Pin/undpin
map('n', '<C-c>', '<CMD>lua require("close_buffers").delete({type = "this"})<CR>', opts)              -- Close current buffer
map('n', '<C-a>', '<CMD>lua require("close_buffers").wipe({ type = "other" })<CR>', opts)             -- Close all exept current
map('n', '<C-t>', '<CMD>BufferLinePickClose<CR>', opts)                                               -- Pick close
-- Packer --
map('n', '<leader>pc', '<Cmd>PackerCompile<CR>', opts)                                                -- Packer compile
map('n', '<leader>pi', '<Cmd>PackerInstall<CR>', opts)                                                -- Packer install
map('n', '<leader>ps', '<Cmd>PackerSync<CR>', opts)                                                   -- Packer sync
map('n', '<leader>pS', '<Cmd>PackerStatus<CR>', opts)                                                 -- Packer status
map('n', '<leader>pu', '<Cmd>PackerUpdate<CR>', opts)                                                 -- PackerUpdate
-- LSP stuff --
vimap('n', '<space>d', vim.diagnostic.open_float, opts)                                               -- Open diagnostics
vimap('n', '<d', vim.diagnostic.goto_prev, opts)                                                      -- Go to previous diagnostic
vimap('n', '>d', vim.diagnostic.goto_next, opts)                                                      -- Go to next diagnostic
vimap('n', '<space>q', vim.diagnostic.setloclist, opts)                                               -- Close diagnostics
vimap('n', 'gD', vim.lsp.buf.declaration, bufopts)                                                    -- Goto declaration
vimap('n', 'gd', vim.lsp.buf.definition, bufopts)                                                     -- Goto definiton
vimap('n', 'K', vim.lsp.buf.hover, bufopts)                                 -- hover
vimap('n', 'gi', vim.lsp.buf.implementation, bufopts)                       -- Goto implementation
vimap('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)                    -- Goto help
vimap('n', '<space>D', vim.lsp.buf.type_definition, bufopts)                -- type_definition
vimap('n', '<space>rn', vim.lsp.buf.rename, bufopts)                        -- Rename 
vimap('n', '<space>f', vim.lsp.buf.code_action, bufopts)                   -- code
vimap('n', 'gr', vim.lsp.buf.references, bufopts)                           -- Find references
vimap('n', '<space>fo', function() vim.lsp.buf.formatting {} end, bufopts)  -- Reformat file
