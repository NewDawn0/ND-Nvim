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

![Nordfox](https://raw.githubusercontent.com/NewDawn0/ND-Nvim/main/.github/screenshots/col-nordfox.png)
![Carbonfox](https://raw.githubusercontent.com/NewDawn0/ND-Nvim/main/.github/screenshots/col-carbonfox.png)
![Dracula](https://raw.githubusercontent.com/NewDawn0/ND-Nvim/main/.github/screenshots/col-dracula.png)

<b>Misc</b>

![nvimTree](https://raw.githubusercontent.com/NewDawn0/ND-Nvim/main/.github/screenshots/nvimTree%2Baerial.png)
![flTerm](https://raw.githubusercontent.com/NewDawn0/ND-Nvim/main/.github/screenshots/floatTerm.png)
![btmTerm](https://raw.githubusercontent.com/NewDawn0/ND-Nvim/main/.github/screenshots/btmTerm.png)
![telescope](https://raw.githubusercontent.com/NewDawn0/ND-Nvim/main/.github/screenshots/telescope.png)
![vsplit](https://raw.githubusercontent.com/NewDawn0/ND-Nvim/main/.github/screenshots/vsplit.png)
![wilder](https://raw.githubusercontent.com/NewDawn0/ND-Nvim/main/.github/screenshots/wilder.png)

</details>
</div>

## Notable features
- Stylish colourschemes like [Nightfox](https://github.com/EdenEast/nightfox.nvim), [Doom-one](https://github.com/romgrk/doom-one.vim), [Dracula](https://github.com/Mofiqul/dracula.nvim) and [OneDark](https://github.com/navarasu/onedark.nvim)
- Cool looking statusline using [Feline](https://github.com/feline-nvim/feline.nvim)
- A fancy command mode setup using [Wilder](https://github.com/gelguy/wilder.nvim)
- An Integrated terminal thanks to [ToggleTerm](https://github.com/akinsho/toggleterm.nvim)
- A code overview menu using [Aerial](https://github.com/stevearc/aerial.nvim)
- Fancy icons menu icons thanks to [Nvim web devicons](https://github.com/nvim-tree/nvim-web-devicons)
- A cool looking homescreen using [alpha](https://github.com/goolord/alpha-nvim)
- An Integrated file browser using [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)
- A tab menu using [Bufferline](https://github.com/akinsho/bufferline.nvim)
- Easily install lsp servers using [LspInstaller](https://github.com/williamboman/nvim-lsp-installer)
- Lsp integration and autosuggestions using [Nvim Cmp](https://github.com/hrsh7th/nvim-cmp), [Lsp Config](https://github.com/neovim/nvim-lspconfig)
- Fast source code parsing using [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Fast file browsing using [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Better splits using [Smart splits](https://github.com/mrjones2014/smart-splits.nvim)

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
git clone --depth 1 --branch v2 https://github.com/NewDawn0/ND-Nvim.git ~/.config/nvim
nvim

# run the following in neovim
Lazy sync
UpdateRemotePlugins

# Install your own language servers
# Here are the ones I regurarly use
MasonInstall cspell bash-language-server asm-lsp autopep8 bash-debug-adapter clang-format clangd cmake-language-server cmakelang cmakelint codespell cpplint cpptools dockerfile-language-server gitui google-java-format gradle-language-server grammarly-languageserver haskell-language-server html-lsp java-debug-adapter latexindent ltex-ls lua-language-server luacheck luaformatter markdownlint marksman pyright rust-analyzer rustfmt shellcheck shfmt taplo vim-language-server yaml-language-server yamlfmt yamllint
```

## Keybinds
**General Keybinds**
- `space` leader key
- `<leader> + w` Save
- `<leader> + h` Disable highlighting

**Files**
- `<leader> + ff` Find files
- `<leader> + fa` Find files (including hidden)
- `<leader> + fw` Live grep
- `<leader> + fn` Edit new file

**Git**
- `<leader> + gc` Find git commits
- `<leader> + gs` Show git status

**Terminal**
- `<leader> + tt` Toggle bottom terminal
- `<leader> + tf` Toggle floating terminal
- `<leader> + tv` Toggle vertical terminal
- `<leader> + tb` Toggle terminal in new tab

**Buffer**
- `<leader> + bn` Open new buffer
- `<leader> + bS` Open scratch buffer
- `<leader> + bn` Go to the next buffer
- `<leader> + bp` Go to the previous buffer
- `<leader> + bP` Pin/Unpin buffer in buffer line
- `<leader> + bf` Find buffers
- `<leader> + bc` Close buffer
- `Ctrl + c` Close buffer
- `<leader> + bk` Kill buffer
- `<leader> + bK` Kill all buffers except current

**Plugins**
- `<leader> + pl` Open Lazy
- `<leader> + ps` Sync packages
- `<leader> + pC` Clean packages
- `<leader> + pu` Check packages
- `<leader> + pp` Open profile

**Mini map & File browser**
- `<leader> + ee` Toggle File browser
- `<leader> + ef` Focus File browser
- `<leader> + ec` Close File browser
- `<leader> + ea` Open mini map
- `<leader> + eac` Close mini map

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
- `<leader> + do` Open diagnostics in float
- `<leader> + dn` Go to the next diagnostic
- `<leader> + dp` Go to the previous diagnostic
- `<leader> + dl` List diagnostics
- `<leader> + ds` Open signature help
- `<leader> + dd` Go to the definition
- `<leader> + dD` Go to the declaration
- `<leader> + dr` Rename items
- `<leader> + dR` Show references
- `<leader> + dc` Code action
- `<leader> + df` Format 

**Misc**
- `<leader> + as` Toggle autosave 
- `<` Left indent line in visual mode
- `>` Right indent line in visual mode
- `gcc` Toggle comment
- `gc` Toggle comment in visual mode

## Changes and improvements 
<!-- TODO: Insert percentage -->
- Speed, % times faster
- Removed unnecessary startup items like the markdown previewer
- New features such as the Scratch command which works like Emacs' scratch buffer

## Special thanks
- [NvChad](https://github.com/NvChad/NvChad)
- [AstroNvim](https://github.com/AstroNvim/AstroNvim)
