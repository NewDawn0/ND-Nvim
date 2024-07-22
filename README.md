<h1 align='center'>ND-Nvim</h1>
<div align='center'>

![Bloat](https://img.shields.io/badge/Bloat-Minimal-c585cf?style=for-the-badge)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/NewDawn0/ND-Nvim?color=e1b56a&style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/NewDawn0/ND-Nvim?color=74be88&style=for-the-badge)
![GitHub top language](https://img.shields.io/github/languages/top/NewDawn0/ND-Nvim?color=6d92bf&style=for-the-badge)

</div>

## Screenshots

## Table of contents

<!-- vim-markdown-toc GFM -->

* [Dependencies](#dependencies)
* [Features](#features)
* [Testing it out](#testing-it-out)
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

## Features

- Powered by Nix (no external package managers like [lazy.nvim](https://github.com/folke/lazy.nvim) and [mason.nvim](https://github.com/williamboman/mason.nvim))
- Seamless [Tmux](https://github.com/tmux/tmux) integration using [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator?tab=readme-ov-file)
- Pleasant Markdown editing using [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) and [vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc)
- Fast navigation using [flash.nvim](https://github.com/folke/flash.nvim) and [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

## Testing it out

```
nix run github:NewDawn0/ND-Nvim
```

## Installation

1. Add ndnvim as an input
   ```nix
   {
       inputs.ndnvim = {
           url = "github:NewDawn0";
           # Optional
           inputs.nix-systems.follows = "nix-systems";
           inputs.nixpkgs.follows = "nixpkgs";
       };
   }
   ```
2. Add it to your packages
   ```nix
   home.packages = with pkgs; [ inputs.ndnvim ];
   # OR
   environment.systemPackages = with pkgs; [ inputs.ndnvim ];
   ```

## Keybinds

### General

- `<leader`: The leader is `space`

### Normal

- General:

  - `<leader>sh` | Horizontal split
  - `<leader>sv` | Vertical split
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
  - `<leader>ca` | Lsp code action

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
