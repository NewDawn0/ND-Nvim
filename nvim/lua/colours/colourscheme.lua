-- Utility
local tokyonight_theme = require "colours.tokyonight-cols"

-- Overwrite colors
package.loaded["tokyonight.colors.moon"] = tokyonight_theme.colors

-- Setup tokyonight
require("tokyonight").setup {
  style = "moon",
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = true, italic = true },
    functions = { bold = true },
  },
}

-- Set theme
vim.cmd [[colorscheme tokyonight]]
