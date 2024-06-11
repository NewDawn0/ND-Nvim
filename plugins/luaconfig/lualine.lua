require("lualine").setup({
	extensions = { "neo-tree", "oil", "man", "quickfix", "toggleterm", "trouble" },
	options = {
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { { "mode", icon = { "" } } },
		lualine_b = { { "branch", icon = { "" } } },
		lualine_c = {
			{
				"diagnostics",
				symbols = {
					error = " ",
					warn = " ",
					hint = " ",
					info = " ",
				},
			},
			{
				"filetype",
				icon_only = true,
				separator = "",
				padding = { left = 1, right = 0 },
			},
			{
				"filename",
				padding = { left = 0, right = 1 },
			},
		},
		lualine_x = {
			-- TODO: Setup dap
			-- {
			--   function () return "  " .. require("dap").status() end,
			--   cond = function() return require("dap").status() ~= "" end,
			-- },
		},
		lualine_y = {
			{ "progress", padding = { left = 1, right = 0 }, icon = { "" }, separator = " " },
			{ "location", padding = { left = 0, right = 1 } },
		},
		lualine_z = {
			function()
				return "  " .. os.date("%R")
			end,
		},
	},
})
