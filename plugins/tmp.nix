{ pkgs, unstable, fn }:
with pkgs.vimPlugins; [
  mason-nvim
  (fn.mkPlugin mason-lspconfig-nvim (fn.readFile ./luaconfig/lsp.lua))
]
