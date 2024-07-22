{ pkgs }:
with pkgs;

# Langs
[
  cabal-install
  cmake
  colima
  docker
  gawk
  gcc
  ghc
  gleam
  gnumake
  go
  gradle
  libcxxStdenv
  maven
  nasm
  nodejs
  openjdk
  python3
  rustup
  sqlite
  zig
]

# Generic packages
++ [
  coreutils
  curl
  fd
  fzf
  jq
  nodePackages.live-server
  nodePackages.nodemon
  ripgrep
  wget
]

# Lsps
++ [ ]
