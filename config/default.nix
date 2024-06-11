{ fn, ... }:
let
  concat = f: "\n" + (builtins.concatStringsSep "\n" f);
  luaFiles = with builtins;
    map (f: readFile ./luaconfig/${f}) (attrNames (readDir ./luaconfig));
  files = [
    (fn.nixToLua (import ./options.nix))
    (fn.setKeybinds (import ./keybinds.nix))
  ] ++ luaFiles;
in concat files
