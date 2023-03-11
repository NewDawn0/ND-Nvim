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
    -- Utils
    { 'famiu/bufdelete.nvim', lazy = true},
    { 'mzlogin/vim-markdown-toc', lazy = false},
    { 'mrjones2014/smart-splits.nvim', },
    -- LSP
}
