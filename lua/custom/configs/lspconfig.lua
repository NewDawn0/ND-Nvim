--[[
 _   _ ____        _   _       _
| \ | |  _ \      | \ | |_   _(_)_ __ ___
|  \| | | | |_____|  \| \ \ / / | '_ ` _ \
| |\  | |_| |_____| |\  |\ V /| | | | | | |
|_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
File: lspconfig.lua
Desc: LSP configuration
--]]
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end
-- Custom server setup
lspconfig.rust_analyzer.setup {
    require("rust-tools").setup(),
}
lspconfig.ltex.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        ltex = {
            language = "en-GB",
        },
    },
}
lspconfig.pyright.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        pyright = {
            autoImportCompletion = true,
            python = {
                analysis = {
                    autoSearchPaths = true,
                    diagnosticMode = "openFilesOnly",
                    useLibraryCodeForTypes = true,
                    typeCheckingMode = "strict",
                },
            },
        },
    },
}
