--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Abbrev
local util = require "util.util"

-- Setup bufferline
require("bufferline").setup {
  options = {
    diagnostics = "nvim_lsp",
    always_show_bufferline = false,
    separator_style = "thick",
    diagnostics_indicator = function(_, _, _, context)
      if context.buffer:current() then return "" end
      return ""
    end,
    offsets = {
      {
        filetype = "neo-tree",
        text = "Neo-tree",
        highlight = "Directory",
        text_align = "left",
      },
      {
        filetype = "oil",
        text = "Oil",
        highlight = "Directory",
        text_align = "left",
      },
    },
  },
}

-- Fix bufferline when restoring session
vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
  callback = function()
    vim.schedule(function() pcall(nvim_bufferline) end)
  end,
})

util.setkb { "<leader>bn", ":BufferLineCycleNext<CR>", "Goto next buffer", { "n" } }
util.setkb { "<leader>bp", ":BufferLineCyclePrev<CR>", "Goto previous buffer", { "n" } }
util.setkb { "<leader>bdd", ":bdelete<CR>", "Close current buffer", { "n" } }
util.setkb { "<leader>bdo", ":BufferLineCloseOthers<CR>", "Close other buffers", { "n" } }
util.setkb { "<leader>bdn", ":BufferLineCloseRight<CR>", "Close right buffer", { "n" } }
util.setkb { "<leader>bdp", ":BufferLineCloseLeft<CR>", "Close left buffer", { "n" } }
util.setkb { "<leader>bmn", ":BufferLineMoveNext<CR>", "Move buffer to next", { "n" } }
util.setkb { "<leader>bmp", ":BufferLineMovePrev<CR>", "Move buffer to previous", { "n" } }
util.setkb { "<leader>bt", ":BufferLineTogglePin<CR>", "Toggle pin buffer", { "n" } }
