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

![Home](https://raw.githubusercontent.com/NewDawn0/ND-Nvim/main/.github/screenshots/main.png)

<details><summary><b>Gallery</b></summary>

</details>
</div>

## Table of contents

<!-- vim-markdown-toc GFM -->

* [Dependencies](#dependencies)
* [Installation](#installation)
* [Keybinds](#keybinds)
    * [General](#general)
    * [Normal](#normal)
    * [Visual](#visual)
    * [Normal & Visual](#normal--visual)
* [Changes and improvements](#changes-and-improvements)
* [Special thanks](#special-thanks)

<!-- vim-markdown-toc -->

## Dependencies

- [Nix](https://nixos.org/download/)
- [Mixtral](https://mistral.ai) using `ollama pull mixtral`

## Installation

1. Add the following inputs to your `flake.nix`

```nix
{
    inputs = {
        ndnvim.url = "path:./lol/ndnvim";
        stylix = {
            url = "github:danth/stylix";
            inputs.home-manager.follows = "home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };
}
```

2. Add the ndnvim overlay to your overlays

```nix
overlays = [ inputs.ndnvim.overlays.default ];
```

3. (Optional) Enable/disable the ndnvim home-manager module in home-manager configuration
   ndnvimCfg.enable option enabled by default

```nix
    ndnvimCfg.enable = true;  # Or `ndnvimCfg.enable = false;` to disable
```

## Keybinds

### General

- `<leader`: The leader is `space`

### Normal

- General:
  - `<leader>ss` | Save
  - `<leader>sw` | Save and quit
  - `<leader>sq` | Quit
  - `<leader>hh` | Disable search highlight
- Buffer navigation:
  - `<leader>bn` | Go to next buffer
  - `<leader>bp` | Go to previous buffer
  - `<leader>bdd` | Close current buffer
  - `<leader>bdo` | Close other buffers
  - `<leader>bdn` | Close right buffer
  - `<leader>bdp` | Close left buffer
  - `<leader>bmn` | Move buffer right
  - `<leader>bmp` | Move buffer left
  - `<leader>bt` | Pin/unpin buffer
- [File Navigation](https://github.com/folke/flash.nvim):
  - `sf` | Flash jump
  - `sF` | Flash jump with treesitter
  - `sR` | Flash jump with treesitter search
- [Searching](https://github.com/nvim-telescope/telescope.nvim):
  - `<leader>fb` | Find buffers
  - `<leader>fd` | Find diagnostics
  - `<leader>ff` | Find files
  - `<leader>fs` | Find string
  - `<leader>fgc` | Find git commits
  - `<leader>fgf` | Find git files
  - `<leader>fn` | Find notifications
  - `<leader>fll` | Find lsp symbols
- Diagnostics:
  - `<leader>dh` | Diagnostics hover
  - `<leader>dd` | Diagnostics definition
  - `<leader>dD` | Diagnostics type definition
  - `<leader>dgn` | Diagnostics go to next
  - `<leader>dgp` | Diagnostics go to previous
  - `<leader>df` | Telescope diagnostics
  - `<leader>dr` | Lsp rename symbol
- [Code completion](https://github.com/hrsh7th/nvim-cmp):
  - `<CTRL>p` | Scroll docs backward | _Cmp completion menu_ |
  - `<CTRL>n` | Scroll docs forward | _Cmp completion menu_ |
  - `<CTRL><SPACE>` | Preview completion | _Cmp completion menu_ |
  - `<ENTER>` | Complete/Expand snipptet | _Cmp completion menu_ |
  - `<TAB>` | Select next | _Cmp completion menu_ |
  - `<SHIFT><TAB>` | Select previous | _Cmp completion menu_ |
- [File explorer](https://github.com/stevearc/oil.nvim) (Solely **Oil filetype!**):
  - `<leader>oh` | Show oil help
  - `-` | Move up
  - `<leader>omu` | Move up
  - `<ENTER>` | Enter file/dir
  - `<leader>osc` | Change sort
  - `<leader>ox` | External
  - `<leader>o.` | Toggle hidden
  - `<leader>op` | Preview file
  - `<leader>osv` | Create vsplit with file/dir
  - `<leader>oss` | Create split with file/dir
- [Git integration](https://github.com/lewis6991/gitsigns.nvim):
  - `<leader>gd` | Git diff this
- [Boolean & Number toggle](https://github.com/nat-418/boole.nvim):
  - `<CTRL>i` | Increment/Toggle booleans
  - `<CTRL>d` | Decrement/Toggle booleans
- [Transparency](https://github.com/xiyaowong/transparent.nvim):
  - `<leader>tt` | Set transparency

### Visual

- Indentation:
  - `>` : Indent selection
  - `<` : Unindent selection
- Sorting:
  - `<leader>ss` : Sort selection
- [Surround actions](https://github.com/echasnovski/mini.surround):
  - `<leader>sa` : Surround add
  - `<leader>ssf` : Surround find
  - `<leader>ssF` : Surround find left
  - `<leader>sr` : Surround replace
  - `<leader>sn` : Surround update $n$ lines
- [Git integration](https://github.com/lewis6991/gitsigns.nvim):
  - `<leader>gss` : Stage hunk
  - `<leader>gsu` : Undo stage hunk
  - `<leader>gsr` : Reset hunk

### Normal & Visual

- Folds:
  - `<leader>fo` : Open fold
  - `<leader>fc` : Close fold

## Changes and improvements

- Nix integration

## Special thanks

- [NvChad](https://github.com/NvChad/NvChad)
- [Lazy](https://github.com/LazyVim/LazyVim)
- [How to create a Neovim flake](https://primamateria.github.io/blog/neovim-nix/)
- [Home manager](https://github.com/nix-community/home-manager)
- [Stylix](https://github.com/danth/stylix)
