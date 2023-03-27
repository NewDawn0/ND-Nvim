--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: init.lua
  Desc: LSP server setup & config
--]]
-- Mason
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- Mason lsp
local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end
local lspconfig = require("lspconfig")
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
    -- Default handlers
    function (server)
        lspconfig[server].setup {
            on_attach = require('aerial').on_attach,
            capabilities = require("cmp_nvim_lsp").default_capabilities()
        }
    end,
    -- Dedicated handlers
    ["rust_analyzer"] = function ()
        require('rust-tools').setup({})
    end,
    ["ltex"] = function ()
        lspconfig.ltex.setup {
            on_attach = require('aerial').on_attach,
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            settings = {
                ltex = {
                    language = "en-GB"
                }
            }
        }
    end,
    ["lua_ls"] = function ()
        lspconfig.lua_ls.setup {
            on_attach = require('aerial').on_attach,
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
            settings = {
                runtime = { version = 'LuaJIT' },
                diagnostics = { globals = 'vim' },
                workspace = { library = vim.api.nvim_get_runtime_file("", true) },
                telemetry = { enable = false }
            }
        }
    end
}
