{
  description = "Telescope with all grammars";

  inputs = {
    nix-systems.url = "github:nix-systems/default";
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let eachSystem = nixpkgs.lib.genAttrs (import inputs.nix-systems);
    in {
      packages = eachSystem (sys:
        let pkgs = nixpkgs.legacyPackages.${sys};
        in { default = pkgs.vimPlugins.nvim-treesitter.withAllGrammars; });
      overlays.default = (final: prev: {
        vimPlugins = prev.vimPlugins // {
          nvim-treesitter = self.packages.${prev.system}.default;
        };
      });
    };
}
