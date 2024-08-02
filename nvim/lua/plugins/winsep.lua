--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Utility
local theme = require("colours.theme").default

-- Setup winsep colours
require("colorful-winsep").setup {
  hi = { bg = "NONE", fg = theme.magenta },
  no_exec_files = { "TelescopePrompt", "mason" },
  smooth = true,
}
