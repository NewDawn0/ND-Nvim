local logo_icon = {
	"                        ⣀⣤⣶⣿⣿⣶⣤⣀                         ",
	"                    ⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀                    ",
	"                ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉   ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀                ",
	"            ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉           ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀            ",
	"            ⣿⣿⣿⣿⠿⠛⠉                   ⠉⠛⠿⣿⣿⣿⣿            ",
	"███╗   ██╗██████╗       ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
	"████╗  ██║██╔══██╗      ████╗  ██║██║   ██║██║████╗ ████║",
	"██╔██╗ ██║██║  ██║█████╗██╔██╗ ██║██║   ██║██║██╔████╔██║",
	"██║╚██╗██║██║  ██║╚════╝██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
	"██║ ╚████║██████╔╝      ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
	"╚═╝  ╚═══╝╚═════╝       ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
	"            ⣿⣿⣿⣿⣶⣤⣀                   ⣀⣤⣶⣿⣿⣿⣿            ",
	"            ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀           ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉            ",
	"                ⠉⠛⠿⣿⣿⣿⣿⣿⣶⣤⣀   ⣀⣤⣶⣿⣿⣿⣿⣿⠿⠛⠉                ",
	"                    ⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉                     ",
	"                        ⠉⠛⠿⣿⣿⠿⠛⠉                         ",
}
local header = "~ brain.exists() == NULL ~"
logo = string.rep("\n", 8) .. table.concat(logo_icon, "\n") .. "\n\n" .. header .. "\n\n"
require("dashboard").setup({
	theme = "doom",
	hide = { statusline = true },
	config = {
		header = vim.split(logo, "\n"),
		center = {
			{
				action = "Telescope find_files",
				desc = " Find File",
				icon = " ",
				key = "f",
			},
			{
				action = "ene | startinsert",
				desc = " New File",
				icon = " ",
				key = "n",
			},
			{
				action = "Telescope oldfiles",
				desc = " Recent Files",
				icon = " ",
				key = "r",
			},
			{
				action = "Telescope live_grep",
				desc = " Find Text",
				icon = " ",
				key = "g",
			},
			{
				action = "Neotree",
				desc = " File Explorer",
				icon = " ",
				key = "g",
			},
			{
				action = "qa",
				desc = " Quit",
				icon = " ",
				key = "q",
			},
		},
		footer = { "󱐋 ND-Nvim powered by 󱄅 Nix" },
	},
})

local cols = vim.g.stylix_colors
local hi = function(what, highlight)
	vim.api.nvim_set_hl(0, what, highlight)
end
hi("DashboardHeader", { fg = cols.base09 })
hi("DashboardFooter", { fg = cols.base09 })
hi("DashboardDesc", { fg = cols.base08 })
hi("DashboardIcon", { fg = cols.base08 })
