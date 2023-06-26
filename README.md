<h1 align='center'>ND-Nvim</h1>
<div align='center'>

![Lines of code](https://img.shields.io/tokei/lines/github/NewDawn0/ND-Nvim?color=%2381A1C1&label=LINES&logoColor=%2381A1C1&style=for-the-badge)
![Bloat](https://img.shields.io/badge/Bloat-Minimal-c585cf?style=for-the-badge)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/NewDawn0/ND-Nvim?color=e1b56a&style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/NewDawn0/ND-Nvim?color=74be88&style=for-the-badge)
![GitHub top language](https://img.shields.io/github/languages/top/NewDawn0/ND-Nvim?color=6d92bf&style=for-the-badge)

</div>
<div align='center'>

## Screenshots

![Home](https://raw.githubusercontent.com/NewDawn0/ND-Nvim/main/.github/screenshots/start.png)

<details><summary><b>Gallery</b></summary>
<b>Some of the themes</b>

<b>Misc</b>

</details>
</div>

## Notable features

- Stylish colours using [Focus](https://github.com/NewDawn0/focus.nvim)
- Cool looking status line using
  [Feline](https://github.com/feline-nvim/feline.nvim)
- A fancy command mode setup using
  [Wilder](https://github.com/gelguy/wilder.nvim)
- An Integrated terminal thanks to
  [ToggleTerm](https://github.com/akinsho/toggleterm.nvim)
- A code overview menu using [Aerial](https://github.com/stevearc/aerial.nvim)
- Fancy icons menu icons thanks to
  [Nvim web devicons](https://github.com/nvim-tree/nvim-web-devicons)
- A cool-looking home screen using
  [alpha](https://github.com/goolord/alpha-nvim)
- An Integrated file browser using
  [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)
- A tab menu using [Bufferline](https://github.com/akinsho/bufferline.nvim)
- Easily install lsp servers using
  [Mason](https://github.com/williamboman/mason.nvim) and
  [MasonLsp](https://github.com/williamboman/mason-lspconfig.nvim)
- Lsp integration and autosuggestions using
  [Nvim Cmp](https://github.com/hrsh7th/nvim-cmp),
  [Lsp Config](https://github.com/neovim/nvim-lspconfig)
- Fast source code parsing using
  [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Fast file browsing using
  [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Better splits using
  [Smart splits](https://github.com/mrjones2014/smart-splits.nvim)

## Dependencies

- Neovim >= 0.8
- NodeJS, Yarn
- Python >= 3.5
- Fzf
- Rust/Cargo
- Luarocks
- Ghc, Cabal

## Installation

```bash
mv ~/.config/nvim ~/.config/nvim.bak
git clone https://github.com/NewDawn0/ND-Nvim.git ~/.config/nvim
nvim

# run the following in neovim
:Lazy sync

# Install your own language servers
# Here are the ones I regurarly use
:MasonInstall cspell bash-language-server asm-lsp autopep8 bash-debug-adapter clang-format clangd cmake-language-server cmakelang cmakelint codespell cpplint cpptools dockerfile-language-server gitui google-java-format gradle-language-server grammarly-languageserver haskell-language-server html-lsp java-debug-adapter latexindent ltex-ls lua-language-server luacheck luaformatter markdownlint marksman pyright rust-analyzer rustfmt shellcheck shfmt taplo vim-language-server yaml-language-server yamlfmt yamllint
```

## Keybinds

**General Keybinds**

- `space` leader key
- `<leader> + h` Disable highlighting
- `<leader> + as` Toggle autosave
- `gcc` Toggle comment [Modes: Normal + Visual]
- `<` Indent selection to left [Mode: Visual]
- `>` Indent selection to right [Mode: Visual]

**Files**

- `<leader> + ff` Find files
- `<leader> + fa` Find files (including hidden)
- `<leader> + bn` Find buffers
- `<leader> + fg` Live grep
- `<leader> + fn` Edit new file

**Git**

- `<leader> + gc` Find git commits
- `<leader> + gs` Show git status
- `<leader> + gf` Show git tracked files

**Terminal**

- `<leader> + tt` Toggle bottom terminal
- `<leader> + tf` Toggle floating terminal
- `<leader> + tv` Toggle vertical terminal

**Buffer**

- `<leader> + bS` Open scratch buffer (Similar to Emacs's scratch buffer)
- `<leader> + bn` Go to the next buffer
- `<leader> + bp` Go to the previous buffer
- `<leader> + bc` Close buffer
- `<leader> + bk` Kill buffer

**Plugins**

- `<leader> + pp` Open Lazy
- `<leader> + ps` Sync packages
- `<leader> + pc` Clean packages
- `<leader> + pC` Check packages
- `<leader> + pu` Update packages

**File browser**

- `<leader> + ee` Toggle file browser
- `<leader> + ef` Filter file browser

**Workspaces**

- `<leader> + wl` List workspace folders
- `<leader> + wa` Add folder to workspace
- `<leader> + wr` Remove folder from workspace

**Splits**

- `Ctrl + l` Move the cursor to the left split
- `Ctrl + h` Move the cursor to the up split
- `Ctrl + k` Move the cursor to the down split
- `Ctrl + j` Move the cursor to the right split
- `Ctrl + Left` Resize splits to the left
- `Ctrl + Up` Resize splits to the up
- `Ctrl + Down` Resize splits to the down
- `Ctrl + Right` Resize splits to the right

**Diagnostics**

- `<leader>dh` Show workspace diagnostics
- `<leader>dn` Go to next diagnostic
- `<leader>dp` Go to the previous diagnostic
- `<leader>dd` Go to definition
- `<leader>di` Go to Implementation
- `<leader>dr` Go to references
- `<leader>dm` Open symbol outline

**LSP code actions**

- `<leader>cr` Rename symbol
- `<leader>ca` Code action
- `<leader>ci` Get symbol documentation

## Changes and improvements

<!-- TODO: Insert percentage -->

- Speed, % times faster
- Removed unnecessary startup items like the markdown previewer
- New features such as the Scratch command which works like Emacs' scratch
  buffer

## Special thanks

- [NvChad](https://github.com/NvChad/NvChad)
- [AstroNvim](https://github.com/AstroNvim/AstroNvim)
- [Lazy](https://github.com/LazyVim/LazyVim)

## Switching versions

To view all possible versions of ND-Nvim's major versions, which are git
branches, run `git branch -a`. To switch versions, run
`git branch <version name>`.
