# _   _ ____        _   _       _
# | \ | |  _ \      | \ | |_   _(_)_ __ ___
# |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
# | |\  | |_| |_____| |\  |\ V /| | | | | | |
# |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
# Copyright: 2024 NewDawn0
#
# Author: NewDawn0 (https://github.com/NewDawn0)

{
  description = "NewDawn0's NeoVim config";

  inputs = {
    nix-systems.url = "github:nix-systems/default";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, ... }@inputs:
    let
      defaultOpts = import ./nix/opts.nix;
      eachSystem = nixpkgs.lib.genAttrs (import inputs.nix-systems);
      mkPkgs = system: {
        unstable = nixpkgs-unstable.legacyPackages.${system};
        pkgs = import nixpkgs {
          inherit system;
          config = { allowUnfree = true; };
          overlays =
            [ (final: prev: (import ./nix/overlays { pkgs = prev; })) ];
        };
      };
    in {
      overlays.default = final: prev: {
        ndnvim = self.packages.${prev.system}.default;
      };
      packages = eachSystem (system:
        let
          inherit (mkPkgs system) pkgs unstable;
          ndnvimOverridable = userOpts:
            let
              opts = pkgs.lib.recursiveUpdate defaultOpts userOpts;
              ndnvim = pkgs.callPackage ./nix/ndnvim.nix { inherit pkgs opts; };
            in pkgs.writeShellApplication {
              name = "nvim";
              runtimeInputs =
                import ./nix/runtime.nix { inherit pkgs unstable opts; };
              text = ''
                ${ndnvim}/bin/nvim "$@"
              '';
            };
        in {
          default = pkgs.lib.makeOverridable ndnvimOverridable defaultOpts;
        });
    };
}
