{ pkgs, unstable, fn }:
with pkgs.vimPlugins; [
  (fn.mkPlugin bufferline-nvim (fn.readFile ./luaconfig/bufferline.lua))
  (fn.mkPlugin colorful-winsep-nvim (fn.readFile ./luaconfig/winsep.lua))
  (fn.mkPlugin dashboard-nvim (fn.readFile ./luaconfig/dashboard.lua))
  (fn.mkPlugin dressing-nvim (fn.readFile ./luaconfig/dressing.lua))
  (fn.mkPlugin indent-blankline-nvim
    (fn.readFile ./luaconfig/indent-blankline.lua))
  (fn.mkPlugin lualine-nvim (fn.readFile ./luaconfig/lualine.lua))
  (fn.mkPlugin nvim-colorizer-lua "require('colorizer').setup()")
  (fn.mkPlugin nvim-notify (fn.readFile ./luaconfig/notify.lua))
  nui-nvim
]
