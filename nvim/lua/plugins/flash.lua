-- Utility
local util = require "util"

-- Setup flash
local flash = require "flash"
flash.setup()

-- Set keybinds
util.setkb { "sf", function() flash.jump() end, "Flash jump", { "n" } }
util.setkb { "sF", function() flash.treesitter() end, "Flash jump with treesitter", { "n" } }
util.setkb { "sR", function() flash.treesitter_search() end, "Flash jump with treesitter search", { "n" } }
