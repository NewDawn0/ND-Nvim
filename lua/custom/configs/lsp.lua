--[[
 _   _ ____        _   _       _
| \ | |  _ \      | \ | |_   _(_)_ __ ___
|  \| | | | |_____|  \| \ \ / / | '_ ` _ \
| |\  | |_| |_____| |\  |\ V /| | | | | | |
|_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
File: lspconfig.lua
Desc: LSP configuration
--]]
-- Aliases
local lspconfig = require "lspconfig"
local mason_lsp = require "mason-lspconfig"
local lspcfg = require "plugins.configs.lspconfig"
local capabilities = lspcfg.capabilities
local on_attach = lspcfg.on_attach

mason_lsp.setup()
require("mason-lspconfig").setup_handlers {
    -- Default handlers
    function(server)
        lspconfig[server].setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end,
    -- Dedicated handlers
    ["rust_analyzer"] = function() require("rust-tools").setup {} end,
    ["ltex"] = function()
        lspconfig.ltex.setup {
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                ltex = {
                    language = "en-GB",
                },
            },
        }
    end,
    ["lua_ls"] = function()
        lspconfig.lua_ls.setup {
            on_attach = on_attach,
            capabilities = capabilities,

            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                            [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
                            [vim.fn.stdpath "data" .. "/lazy/extensions/nvchad_types"] = true,
                            [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
                        },
                        maxPreload = 100000,
                        preloadFileSize = 10000,
                    },
                },
            },
        }
    end,
}
