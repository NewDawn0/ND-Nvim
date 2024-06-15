local cols = vim.g.stylix_colors
require("colorful-winsep").setup {
    hi = {bg = "NONE", fg = cols.base0E},
    no_exec_files = {"TelescopePrompt", "mason"},
    smooth = true
}
