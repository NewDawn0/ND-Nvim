{ pkgs, unstable, fn }:
with builtins;
concatLists (map (f: import ./${f} { inherit pkgs unstable fn; })
  (filter (f: f != "default.nix" && f != "luaconfig")
    (attrNames (readDir ./.))))
