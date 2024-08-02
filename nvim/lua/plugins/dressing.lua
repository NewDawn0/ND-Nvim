--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Setup dressing nvim
require("dressing").setup {
  input = { enabled = true, default_prompt = "Input: ", trim_prompt = true },
  select = { enabled = true, backend = { "telescope", "builtin", "fzf" } },
}
