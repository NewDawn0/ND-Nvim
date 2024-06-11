{ pkgs, unstable, fn }:
with pkgs.vimPlugins; [
  (fn.mkPlugin conform-nvim (fn.readFile ./luaconfig/conform.lua))
  (fn.mkPlugin nvim-cmp (fn.readFile ./luaconfig/cmp.lua))
  (fn.mkPlugin nvim-dap (fn.readFile ./luaconfig/dap.lua))
  (fn.mkPlugin nvim-lint (fn.readFile ./luaconfig/lint.lua))
  (fn.mkPlugin nvim-lspconfig (fn.readFile ./luaconfig/lspconfig.lua))
  cmp-buffer
  cmp-nvim-lsp
  cmp-nvim-lsp-signature-help
  cmp-nvim-lua
  cmp-omni
  cmp-path
  cmp-spell
  cmp_luasnip
  codeium-nvim
  friendly-snippets
  lspkind-nvim
  luasnip
  nvim-dap-go
  nvim-dap-python
  nvim-dap-ui
  nvim-dap-virtual-text
  # nvim-jdtls
  rustaceanvim
]
