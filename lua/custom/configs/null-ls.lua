--[[
 _   _ ____        _   _       _
| \ | |  _ \      | \ | |_   _(_)_ __ ___
|  \| | | | |_____|  \| \ \ / / | '_ ` _ \
| |\  | |_| |_____| |\  |\ V /| | | | | | |
|_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
File: null_ls.lua
Desc: Null-ls lsp setup
--]]
local present, null_ls = pcall(require, "null-ls")

if not present then return end

local b = null_ls.builtins
local api = vim.api
local augroup = api.nvim_create_augroup("LspFormatting", {})

local sources = {
    -- webdev stuff
    b.formatting.deno_fmt,                                                    -- choosed deno for ts/js files cuz its very fast!
    b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
    -- Lua
    b.formatting.stylua,
    -- cpp
    b.formatting.clang_format,
}

null_ls.setup {
    debug = true,
    sources = sources,
    on_attach = function(client, bufnr)
        if client.supports_method "textDocument/formatting" then
            api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
            api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function() vim.lsp.buf.format { async = true } end,
            })
        end
    end,
}
