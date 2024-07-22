-- Utility
local theme = require("colours.theme").default

-- Setup winsep colours
require("colorful-winsep").setup {
  hi = { bg = "NONE", fg = theme.magenta },
  no_exec_files = { "TelescopePrompt", "mason" },
  smooth = true,
}
