{ pkgs, unstable }:
with pkgs; [
  delve
  elixir-ls
  haskellPackages.haskell-debug-adapter
  jdt-language-server
  netcoredbg
  perl-debug-adapter
  python3Packages.debugpy
  gdb
]
# TODO: cpptools
# TODO: codelldb
# TODO: dart-debug-adapter
# TODO: js-debug-adapter
# TODO: kotlin-debug-adapter
