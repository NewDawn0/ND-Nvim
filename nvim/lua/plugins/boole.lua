--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Setup boole
require("boole").setup {
  mappings = { increment = "<C-i>", decrement = "<C-d>" },
  allow_caps_additions = {
    { "enable", "disable" },
    { "enabled", "disabled" },
    { "true", "false" },
    { "on", "off" },
    { "yes", "no" },
  },
}
