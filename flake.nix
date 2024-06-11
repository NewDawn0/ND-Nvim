{
  description = "ND-NVim flake";
  inputs = { };
  outputs = { ... }: {
    overlays.default =
      (final: prev: (import ./util/customPkgs { pkgs = prev; }));
    homeManagerModules.ndnvim = { config, lib, pkgs, unstable, ... }: {
      imports =
        [ (import ./util/ndnvim.nix { inherit config lib pkgs unstable; }) ];
    };
  };
}
