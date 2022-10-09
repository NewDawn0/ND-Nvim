local nvim_lsp = require("lspconfig")

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local lsp_flags = { debounce_text_changes = 150 }
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'sumneko_lua' }

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = require("aerial").on_attach,
        flags = lsp_flags,
        capabilities = capabilities,
    }
end
