require("mason-lspconfig").setup({
    ensure_installed = {
        "sumneko_lua", "rust_analyzer", "clangd",
        "jdtls", "marksman" , "pyright"
    }
})
