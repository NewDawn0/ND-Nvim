--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Setup surround actions
require("mini.surround").setup {
  mappings = {
    add = "sa",
    delete = "sd",
    find = "ssf",
    find_left = "ssF",
    replace = "sr",
    update_n_lines = "sn",
    suffix_last = "l",
    suffix_next = "n",
  },
}
