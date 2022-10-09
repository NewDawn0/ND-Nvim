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
- nodejs, npm and yarn
- nolsp

## Installation
```bash
mv ~/.config/nvim ~/.config/nvim.bak
git clone --depth 1 https://github.com/NewDawn0/ND-Nvim.git ~/.config/nvim
nvim +PackerSync
```

## Keybinds
**General Keybinds**
- `space` leader key
- `<leader> + w` Save
- `<leader> +wq` Save and quit
- `<leader> + e` Toggle file brower
- `<leader> + as` Toggle auotsave
- `<leader> + tt` Open bottom terminal
- `<leader> + tf` Open floating terminal

## Special thanks
- [NvChad](https://github.com/NvChad/NvChad)
- [AstroNvim](https://github.com/AstroNvim/AstroNvim)
- [dark-Jedi2108](https://github.com/dark-Jedi2108/nvide)
