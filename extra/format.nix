{ pkgs, unstable }:
with pkgs; [
  ollama
  shellharden
  buf
  prettierd
  # zig # FIXME: No config found
  black
  rustfmt
  rustup
  clang-tools
  shfmt
  stylua
  unstable.nixfmt-classic
  go
  taplo
  # swift-format # FIXME: No config found
  fprettify # FIXME: No config found
  haskellPackages.fourmolu
  google-java-format
  ktfmt
  asmfmt
]
