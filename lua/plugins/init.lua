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
}
