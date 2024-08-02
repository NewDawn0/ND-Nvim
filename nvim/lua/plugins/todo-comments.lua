--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Setup todo comment highlighting
require("todo-comments").setup {
  signs = true,
  keywords = {
    FIX = {
      icon = " ",
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
    },
    TODO = { icon = " " },
    HACK = { icon = " " },
    WARN = { icon = " ", alt = { "WARNING", "XXX" } },
    PERF = {
      icon = " ",
      alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" },
    },
    NOTE = { icon = " ", alt = { "INFO" } },
    TEST = {
      icon = "⏲ ",
      alt = { "TESTING", "PASSED", "FAILED" },
    },
  },
}
