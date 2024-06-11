require("telescope").setup({
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fd", ":Telescope diagnostics<CR>", { desc = "Find workspace diagnostics" })
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>", { desc = "Find string" })
vim.keymap.set("n", "<leader>fgc", ":Telescope git_commits<CR>", { desc = "Find git commits" })
vim.keymap.set("n", "<leader>fgf", ":Telescope git_files<CR>", { desc = "Find git files" })
vim.keymap.set("n", "<leader>fn", ":Telescope notify<CR>", { desc = "Find notifications" })
vim.keymap.set("n", "<leader>fll", ":Telescope lsp symbols<CR>", { desc = "Find lsp symbols" })

local cols = vim.g.stylix_colors
local hi = function(what, highlight)
	vim.api.nvim_set_hl(0, what, highlight)
end
hi("TelescopeNormal", {})
hi("TelescopePromptTitle", { fg = cols.base09 })
hi("TelescopePromptBorder", { fg = cols.base09 })
hi("TelescopeResultsTitle", { fg = cols.base0E })
hi("TelescopeResultsBorder", { fg = cols.base0E })
hi("TelescopePreviewTitle", { fg = cols.base0D })
hi("TelescopePreviewBorder", { fg = cols.base0D })
