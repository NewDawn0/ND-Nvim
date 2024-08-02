--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Utility
local util = require "util.util"

-- Setup telescope
require("telescope").setup {
  extensions = {},
}

-- Set keybinds
util.setkb { "<leader>fb", ":Telescope buffers<CR>", "Find buffers", { "n" } }
util.setkb { "<leader>fd", ":Telescope diagnostics<CR>", "Find workspace diagnostics", { "n" } }
util.setkb { "<leader>ff", ":Telescope find_files<CR>", "Find files", { "n" } }
util.setkb { "<leader>fgc", ":Telescope git_commits<CR>", "Find git commits", { "n" } }
util.setkb { "<leader>fll", ":Telescope lsp symbols<CR>", "Find lsp symbols", { "n" } }
util.setkb { "<leader>fn", ":Telescope notify<CR>", "Find notifications", { "n" } }
util.setkb { "<leader>fs", ":Telescope live_grep<CR>", "Find string", { "n" } }
