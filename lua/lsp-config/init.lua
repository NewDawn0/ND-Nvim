local nvim_lsp = require("lspconfig")
local bufopts = { noremap = true, silent = true, buffer = bufnr }
local map = vim.keymap.set

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    map('n', 'gD', vim.lsp.buf.declaration, bufopts)
    map('n', 'gd', vim.lsp.buf.definition, bufopts)
    map('n', 'K', vim.lsp.buf.hover, bufopts)
    map('n', 'gi', vim.lsp.buf.implementation, bufopts)
    map('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    map('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    map('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    map('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    map('n', 'gr', vim.lsp.buf.references, bufopts)
    map('n', '<space>fo', function() vim.lsp.buf.formatting {} end, bufopts)
end

local lsp_flags = { debounce_text_changes = 150 }
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'sumneko_lua' }
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
    }
end
