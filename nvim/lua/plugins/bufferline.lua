--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

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
