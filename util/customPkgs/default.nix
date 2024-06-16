{ pkgs }: {
  asm-lsp-git = pkgs.rustPlatform.buildRustPackage {
    pname = "asm-lsp-git";
    version = "0.0.1";
    doCheck = false;
    cargoHash = "sha256-Drn8REH2oHCzV6SUQw8xvG1ceqJhSbQWMyBm1ocz4sA=";
    buildInputs = if pkgs.stdenv.isDarwin then
      with pkgs.darwin.apple_sdk.frameworks; [
        SystemConfiguration
        pkgs.pkg-config
        pkgs.openssl
      ]
    else
      with pkgs; [ pkg-config openssl ];
    PKG_CONFIG_PATH = "${pkgs.openssl.dev}/lib/pkgconfig";
    src = builtins.fetchGit {
      url = "https://github.com/bergercookie/asm-lsp";
      ref = "master";
      rev = "615cb1bbf7d42c98bf341a03c27d5241fab0e8f4";
    };
  };
  vimPlugins = pkgs.vimPlugins // {
    transparent-nvim = pkgs.vimUtils.buildVimPlugin {
      name = "transparent-nvim";
      src = builtins.fetchGit {
        url = "https://github.com/xiyaowong/transparent.nvim";
        ref = "main";
        rev = "fd35a46f4b7c1b244249266bdcb2da3814f01724";
      };
    };
    mini-surround = pkgs.vimUtils.buildVimPlugin {
      name = "mini-surround";
      src = builtins.fetchGit {
        url = "https://github.com/echasnovski/mini.surround";
        ref = "main";
        rev = "27096c1a27324ee8f2044ea2adc77366d8a782de";
      };
    };
    codeium-nvim = pkgs.vimUtils.buildVimPlugin {
      name = "codeium-nvim";
      src = builtins.fetchGit {
        url = "https://github.com/Exafunction/codeium.nvim";
        ref = "main";
        rev = "d3b88eb3aa1de6da33d325c196b8a41da2bcc825";
      };
    };
    gen-nvim = pkgs.vimUtils.buildVimPlugin {
      name = "gen-nvim";
      src = builtins.fetchGit {
        url = "https://github.com/David-Kunz/gen.nvim";
        ref = "main";
        rev = "bd19cf584b5b82123de977b44105e855e61e5f39";
      };
    };
    colorful-winsep-nvim = pkgs.vimUtils.buildVimPlugin {
      name = "colorful-winsep-nvim";
      src = builtins.fetchGit {
        url = "https://github.com/nvim-zh/colorful-winsep.nvim";
        ref = "alpha";
        rev = "72cf292b9b49c371b3d9333d2ff2146b0bceab04";
      };
    };
  };
}
