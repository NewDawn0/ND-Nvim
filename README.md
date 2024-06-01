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
* [Extra keybinds](#extra-keybinds)
* [Changes and improvements](#changes-and-improvements)
* [Special thanks](#special-thanks)

<!-- vim-markdown-toc -->

## Dependencies
- [Nix](https://nixos.org/download/)

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

## Extra keybinds
| Keybind | Description | Modes |
|---------|-------------|-------|
|`<leader`| The leader is `space` | **ALL** |
|`<leader>ss`| Save | **Normal** |
|`<leader>sw`| Save and quit | **Normal** |
|`<leader>sq`| Quit | **Normal** |
|`<leader>hh`| Disable search highlight | **Normal** |
|`<leader>tt`| Set transparency | **Normal** |
|`<leader>bn`| Go to next buffer | **Normal** |
|`<leader>bp`| Go to previous buffer | **Normal** |
|`<leader>bdd`| Close current buffer | **Normal** |
|`<leader>bdo`| Close other buffers | **Normal** |
|`<leader>bdn`| Close right buffer | **Normal** |
|`<leader>bdp`| Close left buffer | **Normal** |
|`<leader>bmn`| Move buffer right | **Normal** |
|`<leader>bmp`| Move buffer left | **Normal** |
|`<leader>bt`| Pin/unpin buffer | **Normal** |
|`<leader>fb`| Find buffers | **Normal** |
|`<leader>fd`| Find diagnostics | **Normal** |
|`<leader>ff`| Find files | **Normal** |
|`<leader>fs`| Find string | **Normal** |
|`<leader>fgc`| Find git commits | **Normal** |
|`<leader>fgf`| Find git files | **Normal** |
|`<leader>fn`| Find notifications | **Normal** |
|`<leader>fll`| Find lsp symbols | **Normal** |
|`<leader>oh`| Show oil help | *Oil filetype* |
|`<leader>omu`| Move up | *Oil filetype* |
|`-`| Move up | *Oil filetype* |
|`<ENTER>`| Enter file/dir | *Oil filetype* |
|`<leader>osc`| Change sort | *Oil filetype* |
|`<leader>ox`| External | *Oil filetype* |
|`<leader>o.`| Toggle hidden | *Oil filetype* |
|`<leader>op`| Preview file | *Oil filetype* |
|`<leader>osv`| Create vsplit with file/dir | *Oil filetype* |
|`<leader>oss`| Create split with file/dir | *Oil filetype* |
|`<leader>gss`| Stage hunk | **Visual** |
|`<leader>gsu`| Undo stage hunk | **Visual** |
|`<leader>gsr`| Reset hunk | **Visual** |
|`<leader>gd`| Git diff this | **Normal** |
|`<CTRL>i`| Increment/Toogle booleans | **Normal** |
|`<CTRL>d`| Decrement/Toogle booleans | **Normal** |
|`<CTRL>p`| Scroll docs backward | *Cmp completion menu* |
|`<CTRL>n`| Scroll docs forward | *Cmp completion menu* |
|`<CTRL><SPACE>`| Preview completion | *Cmp completion menu* |
|`<ENTER>`| Complete/Expand snipptet | *Cmp completion menu* |
|`<TAB>`| Select next | *Cmp completion menu* |
|`<SHIFT><TAB>`| Select previous | *Cmp completion menu* |
|`<leader>h`| Toogle hardtime | **Normal** |
|`>`| Indent selection | **Visual** |
|`<`| Unindent selection | **Visual** |
|`<leader>ss`| Sort selection | **Visual** |
|`<leader>fo`| Open fold | **Normal**, **Visual** |
|`<leader>fc`| Close fold | **Normal**, **Visual** |

## Changes and improvements
- Nix integration

## Special thanks
- [NvChad](https://github.com/NvChad/NvChad)
- [Lazy](https://github.com/LazyVim/LazyVim)
- [How to create a Neovim flake](https://primamateria.github.io/blog/neovim-nix/)
- [Home manager](https://github.com/nix-community/home-manager)
- [Stylix](https://github.com/danth/stylix)
