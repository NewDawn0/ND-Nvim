-- Setup module
local M = {}

-- Set keybind function
-- { Mode, keybind, action, description }
M.setkb = function(f) vim.keymap.set(f[4], f[1], f[2], { desc = f[3] }) end

-- Set highlight
M.sethl = function(what, highlight) vim.api.nvim_set_hl(0, what, highlight) end

-- Return module
return M
