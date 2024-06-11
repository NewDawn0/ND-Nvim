{ pkgs, unstable, fn }:
with pkgs.vimPlugins; [
  (fn.mkPlugin boole-nvim (fn.readFile ./luaconfig/boole.lua))
  (fn.mkPlugin comment-nvim (fn.readFile ./luaconfig/comment.lua))
  (fn.mkPlugin flash-nvim (fn.readFile ./luaconfig/flash.lua))
  (fn.mkPlugin gitsigns-nvim (fn.readFile ./luaconfig/gitsigns.lua))
  (fn.mkPlugin mini-surround (fn.readFile ./luaconfig/surround.lua))
  (fn.mkPlugin nvim-autopairs "require('nvim-autopairs').setup()")
  (fn.mkPlugin nvim-treesitter.withAllGrammars (fn.readFile ./luaconfig/ts.lua))
  (fn.mkPlugin oil-nvim (fn.readFile ./luaconfig/oil.lua))
  (fn.mkPlugin telescope-nvim (fn.readFile ./luaconfig/telescope.lua))
  (fn.mkPlugin todo-comments-nvim (fn.readFile ./luaconfig/todo-comments.lua))
  telescope-fzf-native-nvim
]
