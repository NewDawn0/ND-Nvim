--[[
   _   _ ____        _   ___     ___
  | \ | |  _ \      | \ | \ \   / (_)_ __ ___
  |  \| | | | |_____|  \| |\ \ / /| | '_ ` _ \
  | |\  | |_| |_____| |\  | \ V / | | | | | | |
  |_| \_|____/      |_| \_|  \_/  |_|_| |_| |_|
  File: plugins.lua
  Desc: List of plugins 
--]]
return {
    -- Colourschemes
    { 'marko-cerovac/material.nvim', lazy = false, priority = 10,
        config = function() require 'config.colourschemes.material' end
    },
    {'sainnhe/edge', lazy = true , priority = 10,
        config = function() require 'config.colourschemes.edge' end
    },
    {'tiagovla/tokyodark.nvim', lazy = true, priority = 10,
        config = function() require 'config.colourschemes.tokyodark' end
    },
    { 'folke/tokyonight.nvim', lazy = true, priority = 10 },
    { 'navarasu/onedark.nvim',
    	lazy = true, priority = 10,
        config = function() require 'config.colourschemes.onedark' end
    },
    -- UI
    { 'nvim-zh/colorful-winsep.nvim', event = "VimEnter", config = true },
    { 'iamcco/markdown-preview.nvim', build = 'cd app && yarn install', lazy = true },
    { 'feline-nvim/feline.nvim', event = "BufWinEnter", ft = "!alpha",
        config = function() require 'config.plugins.feline' end
    },
    { 'goolord/alpha-nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons' },
        config = function() require 'config.plugins.dashboard' end
    },
    { 'NvChad/nvim-colorizer.lua', event = "BufWinEnter", ft = { "!aerial", "!NvimTree", "!alpha" },
        config = function () require 'config.plugins.colorizer' end
    },
    -- Utils
    { 'famiu/bufdelete.nvim', lazy = true},
    { 'mzlogin/vim-markdown-toc', lazy = false},
    { 'mrjones2014/smart-splits.nvim', },
    -- LSP
}
