{ pkgs, unstable }:
with pkgs; [
  # glsl_analyzer
  # haskellPackages.hls
  # nodePackages.grammarly-languageserver
  # zls
  # asm-lsp-git
  buf-language-server
  clang-tools
  cmake
  cmake-language-server
  csharp-ls
  dockerfile-language-server-nodejs
  erlang-ls
  gopls
  htmx-lsp
  java-language-server
  kotlin-language-server
  lua-language-server
  marksman
  nginx-language-server
  nil
  nodePackages.bash-language-server
  nodePackages.diagnostic-languageserver
  nodePackages.svelte-language-server
  perlnavigator
  rust-analyzer
  taplo
  typescript
  unstable.basedpyright
  vim-language-server
  vscode-langservers-extracted
  yaml-language-server
]
