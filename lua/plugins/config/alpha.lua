local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local logo1 = {
    "                        ⣀⣤⣶⣿⣿⣶⣤⣀",
    "                    ⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀",
    "                ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉   ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀",
    "            ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉           ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀",
    "            ⣿⣿⣿⣿⠿⠛⠉                   ⠉⠛⠿⣿⣿⣿⣿",
    "███╗   ██╗██████╗       ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
    "████╗  ██║██╔══██╗      ████╗  ██║██║   ██║██║████╗ ████║",
    "██╔██╗ ██║██║  ██║█████╗██╔██╗ ██║██║   ██║██║██╔████╔██║",
    "██║╚██╗██║██║  ██║╚════╝██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
    "██║ ╚████║██████╔╝      ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
    "╚═╝  ╚═══╝╚═════╝       ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
    "            ⣿⣿⣿⣿⣶⣤⣀                   ⣀⣤⣶⣿⣿⣿⣿",
    "            ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀           ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉",
    "                ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀   ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉",
    "                    ⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉",
    "                        ⠉⠛⠿⣿⣿⠿⠛⠉"
}
local logo2 = {
    "              ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
    "               ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
    "                     ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
    "                      ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
    "                     ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
    "              ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
    "             ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
    "            ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
    "            ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
    "                 ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
    "                  ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
    "███╗   ██╗██████╗   ⠉⠛⠛⠿███⣿⣿⣿⣿██╗██⠿⠛⠉ ██╗██╗███╗   ███╗",
    "████╗  ██║██╔══██╗      ████╗  ██║██║   ██║██║████╗ ████║",
    "██╔██╗ ██║██║  ██║█████╗██╔██╗ ██║██║   ██║██║██╔████╔██║",
    "██║╚██╗██║██║  ██║╚════╝██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
    "██║ ╚████║██████╔╝      ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
    "╚═╝  ╚═══╝╚═════╝       ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
}
local theme = "Keyword"
-- Theme colurs
-- String => Green
-- Identifier => Red
-- Keyword => Purple
-- Number => Orange
dashboard.section.header.val = logo1
dashboard.section.header.opts.hl = theme
-- Create Buttons
local function button(sc, txt, keybind, keybind_opts)
  local b = dashboard.button(sc, txt, keybind, keybind_opts)
  b.opts.hl = theme
  b.opts.hl_shortcut = theme
  return b
end
dashboard.section.buttons.val = {
  button("Leader + e", "  File Explorer", "<Cmd>NvimTreeToggle<CR>"),
  button("Leader + ff", "  Find File", "<Cmd>Telescope find_files <CR>"),
  button("Leader + fw", "  Find Word", "<Cmd>Telescope live_grep<CR>"),
  button("Leader + tf", "  Open Terminal", "<Cmd>ToggleTerm direction=float<CR>"),
  button("Leader + ps", "勒Reload Plugins", "<Cmd>PackerSync<CR>"),
  button("q", "  Quit", "<Cmd>qa<CR>")
}
-- Set footer --
local function footer()
  local total_plugins = #vim.tbl_keys(packer_plugins)
  return "Loaded " .. total_plugins .. " plugins  "
end
dashboard.section.footer.val = footer()
dashboard.section.footer.opts.hl = "AlphaFooter"
-- Set headline --
local heading = {
  type = "text",
  val = "~ brain.exists() == null; ~",
  opts = {
    position = "center",
    hl = "AlphaComment",
  },
}
-- Set options --
local opts = {
  layout = {
    { type = "padding", val = 5 },
    dashboard.section.header,
    { type = "padding", val = 3 },
    heading,
    { type = "padding", val = 2 },
    dashboard.section.buttons,
    { type = "padding", val = 1 },
    dashboard.section.footer,
  },
  opts = {
    margin = 5
  },
}
alpha.setup(opts)
vim.cmd([[ autocmd FileType alpha setlocal nofoldenable]])
