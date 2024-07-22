-- Utility
local util = require "util"

-- Setup telescope
require("telescope").setup {
  extensions = {},
}

-- Set keybinds
util.setkb { "<leader>ff", ":Telescope buffers<CR>", "Find buffers", { "n" } }
util.setkb { "<leader>fs", ":Telescope live_grep<CR>", "Find string", { "n" } }
util.setkb { "<leader>ff", ":Telescope find_files<CR>", "Find files", { "n" } }
util.setkb { "<leader>fd", ":Telescope diagnostics<CR>", "Find workspace diagnostics", { "n" } }
util.setkb { "<leader>fgc", ":Telescope git_commits<CR>", "Find git commits", { "n" } }
util.setkb { "<leader>fn", ":Telescope notify<CR>", "Find notifications", { "n" } }
util.setkb { "<leader>fll", ":Telescope lsp symbols<CR>", "Find lsp symbols", { "n" } }
