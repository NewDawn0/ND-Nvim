local nvim_lsp = require("lspconfig")
-- On attach --
local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end
-- Set flags, capabilities and servers --
local lsp_flags = { debounce_text_changes = 150 }
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
-- Setup servers --
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = require("aerial").on_attach,
        flags = lsp_flags,
        capabilities = capabilities
    }
end
