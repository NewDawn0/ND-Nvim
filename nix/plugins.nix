# _   _ ____        _   _       _
# | \ | |  _ \      | \ | |_   _(_)_ __ ___
# |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
# | |\  | |_| |_____| |\  |\ V /| | | | | | |
# |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
# Copyright: 2024 NewDawn0
#
# Author: NewDawn0 (https://github.com/NewDawn0)

{ pkgs }:
with pkgs.vimPlugins; [
  alpha-nvim
  boole-nvim
  bufferline-nvim
  codeium-nvim
  colorful-winsep-nvim
  comment-nvim
  conform-nvim
  dressing-nvim
  flash-nvim
  friendly-snippets
  gen-nvim
  gitsigns-nvim
  indent-blankline-nvim
  lsp-zero-nvim
  lualine-nvim
  markdown-preview-nvim
  mini-surround
  nvim-autopairs
  nvim-colorizer-lua
  nvim-dap
  nvim-dap-go
  nvim-dap-python
  nvim-dap-repl-highlights
  nvim-dap-ui
  nvim-dap-virtual-text
  nvim-lint
  nvim-notify
  nvim-treesitter-textobjects
  nvim-treesitter.withAllGrammars
  nvim-web-devicons
  oil-nvim
  plenary-nvim
  telescope-dap-nvim
  telescope-nvim
  todo-comments-nvim
  tokyonight-nvim
  trim-nvim
  vim-markdown-toc
  vim-mcfunction
  vim-startuptime
  vim-tmux-navigator
  wrapping-nvim
]
