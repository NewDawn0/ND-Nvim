require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls", "rust_analyzer", "clangd",
        "jdtls", "marksman" , "pyright"
    }
})
