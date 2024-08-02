--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Abbrev
local au = vim.api.nvim_create_autocmd

-- Highlight on yank
au("TextYankPost", {
  callback = function() vim.highlight.on_yank { timeout = 300 } end,
})

-- Return to position when opening files
au("BufReadPost", {
  callback = function()
    if vim.fn.line "'\"" > 0 and vim.fn.line "'\"" <= vim.fn.line "$" then
      vim.fn.setpos(".", vim.fn.getpos "'\"")
      vim.cmd "silent! foldopen"
    end
  end,
})
