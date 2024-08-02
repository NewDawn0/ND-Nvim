--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Setup auto formatting
require("conform").setup {
  format_on_save = {
    timeout_ms = 1000,
    lsp_format = "fallback",
  },
  formatters = {
    black = { prepend_args = { "--fast" } },
    gleam = { prepend_args = { "format" } },
    hydrogen = { command = "", stdin = false },
    proto = { command = "buf", args = { "format", "$FILENAME" }, stdin = true },
    taplo = { prepend_args = { "format", "$FILENAME" }, stdin = false },
    zig = { command = "zig", args = { "fmt", "$FILENAME" }, stdin = false },
  },
  formatters_by_ft = {
    asm = { "asmfmt" },
    astro = { "prettierd" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    css = { "prettierd" },
    fennel = { "fnlfmt" },
    fortran = { "fprettify" },
    gleam = { "gleam" },
    go = { "gofmt" },
    haskell = { "ormulu" },
    html = { "prettierd" },
    hydrogen = { "hydrogen" },
    java = { "google-java-format" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    json = { "prettierd" },
    lua = { "stylua" },
    markdown = { "prettierd" },
    nix = { "nixfmt" },
    ocaml = { "ocamlformat" },
    perl = { "perltidy" },
    proto = { "proto" },
    python = { "isort", "black" },
    rust = { "rustfmt" },
    sh = { "beautysh", "shellharden" },
    svelte = { "prettierd" },
    toml = { "taplo" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    vue = { "prettierd" },
    yaml = { "yamlfmt" },
    zig = { "zig" },
    zsh = { "beautysh", "shellharden" },
  },
}
