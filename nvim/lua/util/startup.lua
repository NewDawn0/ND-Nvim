--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Abbrev
local g = vim.g
local opt = vim.opt

-- Speed up startup
g.loaded_matchit = 1
opt.shada = "'100,<50,s10,h"

-- Disable unused providers
g.loaded_python_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
g.loaded_perl_provider = 0

-- Disable default plugins
local disabled_builtins = {
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
}

for _, plugin in pairs(disabled_builtins) do
  g["loaded_" .. plugin] = 1
end

-- Remove redundant rtps
local redundant_paths = {
  "/nix/store/p5nfc7b4xfaaj7glfrj76j3qw3fb7yic-neovim-unwrapped-0.10.0/share/nvim/runtime",
  "/nix/store/p5nfc7b4xfaaj7glfrj76j3qw3fb7yic-neovim-unwrapped-0.10.0/share/nvim/runtime/pack/dist/opt/matchit",
  "/nix/var/nix/profiles/default/etc/xdg/nvim",
  "/nix/var/nix/profiles/default/etc/xdg/nvim/after",
  "/nix/var/nix/profiles/default/share/nvim/site",
  "/nix/var/nix/profiles/default/share/nvim/site/after",
  "/run/current-system/sw/etc/xdg/nvim",
  "/run/current-system/sw/etc/xdg/nvim/after",
  "/run/current-system/sw/share/nvim/site",
  "/run/current-system/sw/share/nvim/site/after",
  "~/.config/nvim",
  "~/.config/nvim/after",
  "~/.local/share/nvim/site/after",
  "~/.nix-profile/etc/xdg/nvim",
  "~/.nix-profile/etc/xdg/nvim/after",
  "~/.nix-profile/share/nvim/site/after",
}

-- Remove the paths from runtimepath permanently
for _, path in ipairs(redundant_paths) do
  vim.opt.runtimepath:remove(vim.fn.expand(path))
end
