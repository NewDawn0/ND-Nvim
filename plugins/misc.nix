{ pkgs, unstable, fn }:
with pkgs.vimPlugins; [
  (fn.mkPlugin gen-nvim (fn.readFile ./luaconfig/gen.lua))
  (fn.mkPlugin hardtime-nvim (fn.readFile ./luaconfig/hardtime.lua))
  (fn.mkPlugin transparent-nvim "require('transparent').setup()")
  (fn.mkPlugin trim-nvim "require('trim').setup()")
  (fn.mkPlugin vim-tmux-navigator (fn.readFile ./luaconfig/tmux.lua))
  (fn.mkPlugin wrapping-nvim "require('wrapping').setup()")
  markdown-preview-nvim
  nvim-web-devicons
  plenary-nvim
  vim-markdown-toc
]
