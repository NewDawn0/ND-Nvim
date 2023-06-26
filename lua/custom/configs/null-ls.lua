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
    -- formatting
    b.formatting.beautysh,                                                         -- shell
    b.formatting.black,                                                            -- python
    b.formatting.cbfmt,                                                            -- code blocks in md & org
    b.formatting.clang_format.with { extra_args = { "-style='{IndentWidth: 4}'" } }, -- C, C#, C++, Java, Cuda, Protobuf
    b.formatting.cmake_format,                                                     -- cmake
    b.formatting.codespell.with { filetypes = { rs = false } },                    -- typo correction in text files
    b.formatting.deno_fmt,                                                         -- JS, TS, Json
    b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },
    b.formatting.reorder_python_imports,
    b.formatting.rustfmt, -- Rust
    b.formatting.stylua, -- Lua
    b.formatting.taplo, -- TOML
    b.formatting.yamlfmt, -- YAML,
    b.formatting.nixfmt, -- Nix
    b.formatting.haxe_formatter.with { filetypes = { "hx", "hxml", "haxe" } },
    -- Diagnostics
    b.diagnostics.statix, -- Nix
    -- Hover
    b.hover.dictionary, -- Definition
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
