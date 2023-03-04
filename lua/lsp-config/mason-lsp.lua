require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {

    -- Default handlers
    function (server)
        require("lspconfig")[server].setup {
            on_attach = require("aerial").on_attach,
            capabilities = require("cmp_nvim_lsp").default_capabilities()
        }
    end,

    -- Dedicated handlers
}
