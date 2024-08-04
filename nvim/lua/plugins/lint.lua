--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Abbrev
local lint = require "lint"

-- Setup linters
lint.linters_by_ft = {
  bash = { "shellcheck" },
  docker = { "hadolint" },
  go = { "golangcilint" },
  haskell = { "hlint" },
  java = { "checkstyle" },
  json = { "jsonlint" },
  lua = { "luacheck" },
  markdown = { "write_good", "markdownlint-cli2" },
  proto = { "protolint" },
  python = { "pylint" },
  yaml = { "yamllint" },
  zsh = { "shellcheck" },
}

-- Setup automatic linting
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function() lint.try_lint() end,
})
