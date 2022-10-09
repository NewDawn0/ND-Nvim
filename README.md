# nvim-config
My personal neovim configuration

## Installation
```bash
mv ~/.config/nvim ~/.config/nvim.bak
git clone https://github.com/NewDawn0/ND-Nvim.git ~/.config/nvim
nvim +PackerSync
```
## Updating
```bash
cd ~/.config/nvim
git pull
nvim +PackerSync
```
## Dependencies
- npm
- yarn

## Keybinds
**General Keybinds**
- `space` leader key
- `<leader> + w` Save
- `<leader> +wq` Save and quit
- `<leader> + e` Toggle file brower
- `<leader> + as` Toggle auotsave
- `<leader> + tt` Open bottom terminal
- `<leader> + tf` Open floating terminal
