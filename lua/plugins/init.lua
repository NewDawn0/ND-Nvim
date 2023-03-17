--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: plugins.lua
  Desc: List of plugins 

  Priorities:
    10 => colourschemes
     9 => notifications
     8 => treesitter
     7 => aerial + lsp sources
     6 => more lsp sources
     5 => mason + nvim cmp + mason-lsp
--]]
return {
    -- Colourschemes
    { 'marko-cerovac/material.nvim', lazy = false, priority = 10,
        config = function() require 'config.colourschemes.material' end
    },
    { 'navarasu/onedark.nvim', lazy = true, priority = 10,
        config = function () require 'config.colourschemes.onedark' end
    },
    -- UI
    { 'nvim-zh/colorful-winsep.nvim', event = "VimEnter", config = true },
    { 'iamcco/markdown-preview.nvim', build = 'cd app && yarn install' },
    { 'feline-nvim/feline.nvim', event = "BufWinEnter", ft = "!alpha",
        config = function() require 'config.plugins.feline' end
    },
    { 'goolord/alpha-nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons' },
        config = function() require 'config.plugins.dashboard' end
    },
    { 'NvChad/nvim-colorizer.lua', cmd = "ColorizerToggle",
        ft = { "!aerial", "!NvimTree", "!alpha" },
        config = function () require 'config.plugins.colorizer' end,
    },
    { 'folke/todo-comments.nvim', event = "BufWinEnter",
        config = function() require 'config.plugins.todo' end,
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'lewis6991/gitsigns.nvim',
        ft = "gitcommit", event = "BufWinEnter",
        config = true
    },
    { 'akinsho/bufferline.nvim', event = "BufWinEnter",
        config = function() require 'config.plugins.bufferline' end,
        dependencies = { 'kyazdani42/nvim-web-devicons' }
    },
    { 'kyazdani42/nvim-tree.lua', event = "UIEnter",
        config = function() require 'config.plugins.tree' end,
        dependencies = { 'kyazdani42/nvim-web-devicons', }
    },
    { 'rcarriga/nvim-notify', priority = 9,
        config = function() require 'config.plugins.notify' end
    },
    { 'stevearc/aerial.nvim', event = "BufWinEnter", priority = 7,
        cmd = { 'AerialToggle', 'AerialClose', 'AerialCloseAll', 'AerialOpen', 'AerialOpenAll' },
        config = function() require 'config.plugins.aerial' end
    },
    { 'gelguy/wilder.nvim', event = "BufWinEnter",
        config = function() require 'config.plugins.wilder' end,
        dependencies = {
            'roxma/nvim-yarp',
            'kyazdani42/nvim-web-devicons'
        }
    },
    { 'nvim-telescope/telescope.nvim',
    	cmd = "Telescope",
        config = function() require 'config.plugins.telescope' end
    },
    -- Utils
    -- RM: Remove benchmarks after testing
    { 'dstein64/vim-startuptime',
        cmd = "StartupTime",
    },
    { 'lewis6991/impatient.nvim' },
    { 'famiu/bufdelete.nvim', lazy = true},
    { 'mzlogin/vim-markdown-toc', lazy = false},
    { 'mrjones2014/smart-splits.nvim', },
    { 'akinsho/toggleterm.nvim', cmd = "ToggleTerm",
        config = function() require 'config.plugins.term' end
    },
    { 'Pocco81/auto-save.nvim',
    	cmd = "ASToggle",
        config = function() require 'config.plugins.save' end
    },
    { 'terrortylor/nvim-comment', cmd = "CommentToggle", keys = { "gcc" },
        config = function() require 'config.plugins.comment' end
    },
    { 'windwp/nvim-autopairs', event = "InsertEnter",
        config = function() require 'config.plugins.pairs' end
    },
    { 'nvim-treesitter/nvim-treesitter', event = "BufWinEnter",
        build = { ":TSUpdate", ":TSInstall all" }, priority = 8
    },
    { 'lukas-reineke/indent-blankline.nvim', event = "InsertEnter",
        config = function() require 'config.plugins.indent' end,
        dependencies = { 'nvim-treesitter/nvim-treesitter' }
    },
    -- LSP
    -- { 'jcdickinson/codeium.nvim', event = "BufWinEnter",
    --     priority = 6, config = true,
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",
    --         "hrsh7th/nvim-cmp",
    --     }
    -- },
    { 'onsails/lspkind.nvim', lazy = true },
    { 'rafamadriz/friendly-snippets', priority = 7 },
    { 'neovim/nvim-lspconfig', priority = 3 },
    { 'L3MON4D3/LuaSnip', priority = 7 },
    { 'saadparwaiz1/cmp_luasnip', priority = 6,
        dependencies = { 'L3MON4D3/LuaSnip' }
    },
    { 'hrsh7th/cmp-nvim-lua', event = "BufWinEnter", priority = 6 },
    { 'hrsh7th/cmp-path', event = "BufWinEnter", priority = 6 },
    { 'hrsh7th/cmp-nvim-lsp', event = "BufWinEnter", priority = 6 },
    { 'hrsh7th/cmp-nvim-lsp-signature-help', event = "BufWinEnter", priority = 6 },
    { 'hrsh7th/nvim-cmp', event = "BufWinEnter", priority = 5,
        dependencies = { 'rafamadriz/friendly-snippets' },
        config = function() require 'config.lsp.cmp' end
    },
    {'williamboman/mason.nvim', lazy = true },
    {'williamboman/mason-lspconfig.nvim', lazy = true },
    {'neovim/nvim-lspconfig', lazy = true, },
}
