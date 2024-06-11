{ config, lib, pkgs, unstable, ... }:
let fn = import ./lib.nix { inherit lib; };
in {
  options = {
    ndnvimCfg.enable = lib.mkEnableOption "the newdawn0-neovim config";
  };
  config = {
    ndnvimCfg.enable = lib.mkDefault true;
    programs.neovim = lib.mkIf config.ndnvimCfg.enable {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
      vimdiffAlias = true;
      withNodeJs = true;
      withPython3 = true;
      withRuby = false;
      extraLuaConfig = import ../config { inherit pkgs unstable fn; };
      plugins = import ../plugins { inherit pkgs unstable fn; };
      extraPackages = import ../extra { inherit pkgs unstable; };
    };
  };
}
