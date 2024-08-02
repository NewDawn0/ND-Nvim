--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Setup indent guides
require("ibl").setup {
  scope = { enabled = false },
  exclude = {
    filetypes = {
      "alpha",
      "help",
      "dashboard",
      "mason",
      "neo-tree",
      "notify",
      "toggleterm",
      "trouble",
      "Trouble",
    },
  },
}
