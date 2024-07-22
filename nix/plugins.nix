{ pkgs }:
with pkgs.vimPlugins;
[
  alpha-nvim
  boole-nvim
  bufferline-nvim
  colorful-winsep-nvim
  comment-nvim
  flash-nvim
  gen-nvim
  gitsigns-nvim
  indent-blankline-nvim
  lualine-nvim
  markdown-preview-nvim
  mini-surround
  nvim-autopairs
  nvim-colorizer-lua
  nvim-notify
  nvim-treesitter.withAllGrammars
  nvim-web-devicons
  oil-nvim
  plenary-nvim
  telescope-nvim
  todo-comments-nvim
  tokyonight-nvim
  trim-nvim
  undotree-nvim
  vim-markdown-toc
  vim-tmux-navigator
  wrapping-nvim
  nvim-cmp
  nvim-lspconfig
  cmp-buffer
  cmp-nvim-lsp
  cmp-nvim-lua
  cmp-path
  cmp_luasnip
  codeium-nvim
  friendly-snippets
  lspkind-nvim
  luasnip
]
# Temporary plugins
++ [ mason-nvim mason-lspconfig-nvim ]
