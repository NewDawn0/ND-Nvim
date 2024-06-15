local lspconfig = require "lspconfig"
-- TODO: Add !git (spyglass mc)
-- TODO: Add !mason (lean-language-server)
-- TODO: Add awk_ls
-- TODO: Add cobol_ls
-- TODO: Add css_variables
-- TODO: Add gradle_ls
-- TODO: Add autotools_ls
local servers = {
    "asm_lsp", "awk_ls", "basedpyright", "bashls", "bufls", "clangd", "cmake",
    "csharp_ls", "cssls", "diagnosticls", "dockerls", "elixirls", "erlangls",
    "eslint", "glsl_analyzer", "gopls", "html", "htmx", "java_language_server",
    "jsonls", "kotlin_language_server", "marksman", "nginx_language_server",
    "nil_ls", "perlnavigator", "rust_analyzer", "svelte", "taplo", "tsserver",
    "vimls", "yamlls"
    -- "zls",
    -- "grammarly",
    -- "hls",
}
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = function(...)
    vim.keymap.set("n", "<leader>dh", vim.lsp.buf.hover,
                   {buffer = 0, desc = "Diagnostics hover"})
    vim.keymap.set("n", "<leader>dd", vim.lsp.buf.definition,
                   {buffer = 0, desc = "Diagnostics definition"})
    vim.keymap.set("n", "<leader>dD", vim.lsp.buf.type_definition,
                   {buffer = 0, desc = "Diagnostics type definition"})
    vim.keymap.set("n", "<leader>dgn", vim.diagnostic.goto_next,
                   {buffer = 0, desc = "Diagnostics goto next"})
    vim.keymap.set("n", "<leader>dgp", vim.diagnostic.goto_prev,
                   {buffer = 0, desc = "Diagnostics goto previous"})
    vim.keymap.set("n", "<leader>df", ":Telescope diagnostics<CR>",
                   {buffer = 0, desc = "Telescope diagnostics"})
    vim.keymap.set("n", "<leader>dr", vim.lsp.buf.rename,
                   {buffer = 0, desc = "Lsp rename symbol"})
end

-- Normal LSP setup
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {capabilities = capabilities, on_attach = on_attach}
end
-- Dedicated lsp setup: LUA
lspconfig.lua_ls.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {globals = {"vim"}},
            runtime = {version = "LuaJIT"},
            workspace = {
                checkThirdParty = false,
                library = vim.api.nvim_get_runtime_file("", true)
            },
            telemetry = {enable = false}
        }
    }
}
