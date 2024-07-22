{ pkgs }:
let
  nvimRtp = pkgs.stdenv.mkDerivation {
    name = "ndnvim-rtp";
    src = ../nvim;
    buildPhase = ''
      mkdir -p $out/nvim
      mkdir -p $out/lua
      rm init.lua
    '';
    installPhase = ''
      cp -r lua $out/lua
      rm -r lua
      cp -r $out/lua $out/nvim
    '';
  };
in pkgs.neovim.override {
  viAlias = true;
  vimAlias = true;
  configure = {
    packages.all.start = import ./plugins.nix { inherit pkgs; };
    customRC = ''
      lua <<EOF
      vim.loader.enable()
      vim.opt.rtp:prepend('${nvimRtp}/lua')
    '' + (builtins.readFile ../nvim/init.lua) + ''
      vim.opt.rtp:prepend('${nvimRtp}/nvim')
      EOF
    '';
    extraMakeWrapperArgs = " "
      + ''--set LIBSQLITE_CLIB_PATH "${pkgs.sqlite.out}/lib/libsqlite3.so"''
      + " " + ''--set LIBSQLITE "${pkgs.sqlite.out}/lib/libsqlite3.so"'';
  };
}
