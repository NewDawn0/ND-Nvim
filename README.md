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

## Some of the more notable features
- Stylish colourschemes like [Nightfox](https://github.com/EdenEast/nightfox.nvim), [Doom-one](https://github.com/romgrk/doom-one.vim), [Dracula](https://github.com/Mofiqul/dracula.nvim) and [OneDark](https://github.com/navarasu/onedark.nvim)
- Cool looking statusline usinng [Feline](https://github.com/feline-nvim/feline.nvim)
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

## Requirements
- Neovim >= 0.8
- NodeJS, Yarn
- Python >= 3.5
- fzf

## Installation
```bash
mv ~/.config/nvim ~/.config/nvim.bak
git clone --depth 1 --branch v1 https://github.com/NewDawn0/ND-Nvim.git ~/.config/nvim
nvim +PackerSync
```

## Keybinds
**General Keybinds**
- `space` leader key
- `<leader> + w` Save
- `<leader> + wq` Save and quit
- `<leader> + h` Disable highlighting

**Naviagation and splits**
- `ctrl + h` Move to left menu
- `ctrl + j` Move to lower menu
- `ctrl + k` Move to upper menu
- `ctrl + h` Move to right menu
- `ctrl + up arrow` Resize splits upwards
- `ctrl + down arrow` Resize splits downwards
- `ctrl + left arrow` Resize splits to the left
- `ctrl + right arrow` Resize splits to the right

**Terminal**
- `<leader> + tt` Toggle terminal at the bottom
- `<leader> + tf` Toggle floating terminal

**Files**
- `<leader> + e` Toggle file browser
- `<leader> + o` Focus file browser
- `<leader> + ff` Quick search
- `<leader> + fa` Quick search including hidden files
- `<leader> + fw` Live grep (similar to ripgrep)
- `<leader> + fb` Find buffers
- `<leader> + gc` Find git commits
- `<leader> + gs` Show git status
- `<leader> + as` Toggle autosave
- `<leader> + a` Toggle context menu

**Plugins**
- `<leader> + pc` Packer compile
- `<leader> + pi` Packer install
- `<leader> + ps` Packer sync
- `<leader> + pu` Packer update
- `<leader> + pS` Packer Status

**Bufferline/Buffertabs**
- `ctrl + p` Pick buffer
- `ctrl + u` Pin/unpin buffer
- `ctrl + c` Close current buffer
- `ctrl + a` Close all except current buffer
- `ctrl + t` Pick buffer to close

**LSP stuff**
- `<leader> + d` Open diagnostics
- `<d` Goto next diagnostic 
- `>d` Goto previous diagnostic
- `<leader> + q` Close diagnostics
- `gD` Goto declaration
- `gd` Goto definition
- `gr` Find references
- `K` Get hover description
- `gi` Goto Implementation
- `ctrl + k` Goto help
- `<leader> + D` Type definition
- `<leader> + rn` Rename all instances
- `<leader> + ca` Toggle code actions
- `<leader> + fo` Format file

**Misc**
- `#` Comment line
- `<` Indent line in visual mode

## Special thanks
- [NvChad](https://github.com/NvChad/NvChad)
- [AstroNvim](https://github.com/AstroNvim/AstroNvim)
- [dark-Jedi2108](https://github.com/dark-Jedi2108/nvide)
