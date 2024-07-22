{
  description = "NewDawn0's NeoVim config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    nix-systems.url = "github:nix-systems/default";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      eachSystem = nixpkgs.lib.genAttrs (import inputs.nix-systems);
      mkPkgs = system:
        import nixpkgs {
          config = { allowUnfree = true; };
          inherit system;
          overlays = [
            (final: prev: (import ./nix/pkgOverlays.nix { pkgs = prev; }))
            (final: prev: {
              ndnvim = prev.callPackage ./nix/nvim.nix { pkgs = prev; };
            })
          ];
        };
    in {
      overlays.default = (final: prev: { ndnvim = self.packages.default; });
      packages = eachSystem (sys:
        let pkgs = mkPkgs sys;
        in {
          default = pkgs.writeShellApplication {
            name = "nvim";
            runtimeInputs = import ./nix/runtime.nix { inherit pkgs; };
            text = ''
              ${pkgs.ndnvim}/bin/nvim "$@"
            '';
          };
        });
    };
}
