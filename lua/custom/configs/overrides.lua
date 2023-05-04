--[[
 _   _ ____        _   _       _
| \ | |  _ \      | \ | |_   _(_)_ __ ___
|  \| | | | |_____|  \| \ \ / / | '_ ` _ \
| |\  | |_| |_____| |\  |\ V /| | | | | | |
|_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
File: overrides.lua
Desc: Overrides default plugin configs
--]]
local M = {}

M.treesitter = {
    ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
    },
    indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- },
    },
}

M.mason = {
    ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",

        -- c/cpp stuff
        "clangd",
        "clang-format",
        -- chad stuff
        "rust analyzer",
    },
}

-- git support in nvimtree
M.nvimtree = {
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
}

-- Autopairs
M.autopairs = {
    disable_filetype = { "TelescopePrompt", "vim", "alpha", "aerial", "NvimTree" },
}

return M
