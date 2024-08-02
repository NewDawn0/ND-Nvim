--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Utility functions
local util = require "util.util"

-- Set keybinds
util.setkb { "<C-h>", ":TmuxNavigateLeft<cr>", "Move left", { "n" } }
util.setkb { "<C-j>", ":TmuxNavigateDown<cr>", "Move down", { "n" } }
util.setkb { "<C-k>", ":TmuxNavigateUp<cr>", "Move up", { "n" } }
util.setkb { "<C-l>", ":TmuxNavigateRight<cr>", "Move right", { "n" } }
