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
local fn = vim.fn
local cmd = vim.cmd

-- Highlight on yank
au("TextYankPost", {
  callback = function() vim.highlight.on_yank { timeout = 300 } end,
})

-- Return to position when opening files
au("BufReadPost", {
  callback = function()
    if vim.fn.line "'\"" > 0 and fn.line "'\"" <= fn.line "$" then
      fn.setpos(".", fn.getpos "'\"")
      cmd "silent! foldopen"
    end
  end,
})

-- Automatically reload file if changed
au({ "BufEnter", "CursorHold", "FocusGained" }, {
  callback = function() cmd "silent! checktime %" end,
})

-- Automatically resize windows when screen size changes
au("VimResized", {
  callback = function() cmd "tabdo wincmd =" end,
})

-- Create missing dirs for writing to path
au("BufWritePre", {
  callback = function() cmd "call mkdir(expand('<afile>:p:h'), 'p')" end,
})
