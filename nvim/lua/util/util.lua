--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Setup module
local M = {}

-- Set keybind function
-- { Mode, keybind, action, description }
M.setkb = function(f) vim.keymap.set(f[4], f[1], f[2], { desc = f[3] }) end

-- Set highlight
M.sethl = function(groups, cols)
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, cols)
  end
end

-- Return module
return M
