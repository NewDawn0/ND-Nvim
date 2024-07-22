{ pkgs }: {
  vimPlugins = pkgs.vimPlugins // {
    bufferline-nvim = pkgs.vimUtils.buildVimPlugin {
      name = "bufferline-nvim";
      src = builtins.fetchGit {
        ref = "main";
        rev = "0b2fd861eee7595015b6561dade52fb060be10c4";
        url = "https://github.com/akinsho/bufferline.nvim";
      };
    };
    codeium-nvim = pkgs.vimUtils.buildVimPlugin {
      name = "codeium-nvim";
      src = builtins.fetchGit {
        ref = "main";
        rev = "d3b88eb3aa1de6da33d325c196b8a41da2bcc825";
        url = "https://github.com/Exafunction/codeium.nvim";
      };
    };
    colorful-winsep-nvim = pkgs.vimUtils.buildVimPlugin {
      name = "colorful-winsep-nvim";
      src = builtins.fetchGit {
        ref = "alpha";
        rev = "72cf292b9b49c371b3d9333d2ff2146b0bceab04";
        url = "https://github.com/nvim-zh/colorful-winsep.nvim";
      };
    };
    gen-nvim = pkgs.vimUtils.buildVimPlugin {
      name = "gen-nvim";
      src = builtins.fetchGit {
        ref = "main";
        rev = "bd19cf584b5b82123de977b44105e855e61e5f39";
        url = "https://github.com/David-Kunz/gen.nvim";
      };
    };
    mini-surround = pkgs.vimUtils.buildVimPlugin {
      name = "mini-surround";
      src = builtins.fetchGit {
        ref = "main";
        rev = "27096c1a27324ee8f2044ea2adc77366d8a782de";
        url = "https://github.com/echasnovski/mini.surround";
      };
    };
    undotree-nvim = pkgs.vimUtils.buildVimPlugin {
      name = "undotree-nvim";
      src = builtins.fetchGit {
        ref = "main";
        rev = "eab459ab87dd249617b5f7187bb69e614a083047";
        url = "https://github.com/jiaoshijie/undotree";
      };
    };
  };
}
