{ pkgs, unstable }:
with builtins;
foldl' (acc: cur: if elem cur acc then acc else acc ++ [ cur ]) [ ] (concatLists
  (map (f: import ./${f} { inherit pkgs unstable; })
    (filter (f: f != "default.nix") (attrNames (readDir ./.)))))
