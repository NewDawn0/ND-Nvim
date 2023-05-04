--[[
     _   _ ____        _   _       _           
    | \ | |  _ \      | \ | |_   _(_)_ __ ___  
    |  \| | | | |_____|  \| \ \ / / | '_ ` _ \ 
    | |\  | |_| |_____| |\  |\ V /| | | | | | |
    |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
    File: plugins.lua
    Desc: Plugin list
--]]

local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

    {
        "neovim/nvim-lspconfig",
        dependencies = {
      -- format & linting
            {
                "jose-elias-alvarez/null-ls.nvim",
                config = function()
                    require "custom.configs.null-ls"
                end,
            },
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end, -- Override to setup mason-lspconfig
    },

  -- override plugin configs
    {
        "williamboman/mason.nvim",
        opts = overrides.mason
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },

  -- Install a plugin
    {
        "max397574/better-escape.nvim",
        event = "InsertEnter",
        config = function()
            require("better_escape").setup()
        end,
    },
    {
        "Pocco81/auto-save.nvim",
        cmd = "ASToggle",
        config = function ()
            require("auto-save").setup({
                enabled = false
            })
        end
    },
    {
        "windwp/nvim-autopairs",
        opts = overrides.autopairs
    },
    {
        "mzlogin/vim-markdown-toc",
        ft = "markdown"
    },
    {
        "terrortylor/nvim-comment",
        cmd = "CommentToggle",
        keys = { "gcc" },
        config = function ()
            require("custom.configs.comment")
        end
    },
    {
        "nvim-zh/colorful-winsep.nvim",
        event = "VimEnter"
    },
    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && yarn install"
    },
    {
        "folke/todo-comments.nvim",
        event = "BufWinEnter",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function ()
            require("custom.configs.todo")
        end
    },
    {
        "rcarriga/nvim-notify",
        event = "VimEnter",
        config = function()
            require("custom.configs.notify")
        end
    },
    {
        "nvim-zh/colorful-winsep.nvim",
        event = "BufWinEnter",
        config = true
    },
    {
        "folke/which-key.nvim",
        enabled = false
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false
    },
    {
        "jcdickinson/codeium.nvim",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },
        config = function ()
            require("custom.configs.codeium")
        end
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        dependencies = {
            "jcdickinson/codeium.nvim"
        }
    }

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

}

return plugins
