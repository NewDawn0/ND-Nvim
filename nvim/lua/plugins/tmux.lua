-- Utility functions
local util = require "util"

-- Set keybinds
util.setkb { "<C-h>", ":TmuxNavigateLeft<cr>", "Move left", { "n" } }
util.setkb { "<C-j>", ":TmuxNavigateDown<cr>", "Move down", { "n" } }
util.setkb { "<C-k>", ":TmuxNavigateUp<cr>", "Move up", { "n" } }
util.setkb { "<C-l>", ":TmuxNavigateRight<cr>", "Move right", { "n" } }
