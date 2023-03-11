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
        config = function() require 'colourschemes.material' end
    },
    {'sainnhe/edge', lazy = true , priority = 10,
        config = function() require 'colourschemes.edge' end
    },
    {'tiagovla/tokyodark.nvim', lazy = true, priority = 10,
        config = function() require 'colourschemes.tokyodark' end
    },
    { 'folke/tokyonight.nvim', lazy = true, priority = 10 },
    { 'navarasu/onedark.nvim',
    	lazy = true, priority = 10,
        config = function() require 'colourschemes.onedark' end
    },
}
