-- Utility functions
local util = require "util"

-- Setup undotree
local undotree = require "undotree"
undotree.setup {}

-- Set keybinds
util.setkb { "<leader>u", undotree.toggle, "Toggle undotree", { "n" } }
