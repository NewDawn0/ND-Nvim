--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Setup tokyonight
require("tokyonight").setup {
  style = "moon",
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = true, italic = true },
    functions = { bold = true },
  },
}

-- Set theme
vim.cmd [[colorscheme tokyonight]]
