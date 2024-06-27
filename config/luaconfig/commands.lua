-- Set text wrap on md, text, tex
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.md", "*.text", "*.txt", "*.org", "*.rtf", "*.tex" },
	command = "setlocal wrap",
})
-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ timeout = 300 })
	end,
})
-- Return to position when opening files
vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function()
		if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
			vim.fn.setpos(".", vim.fn.getpos("'\""))
			vim.cmd("silent! foldopen")
		end
	end,
})
-- Init
local function transparent()
	local groups = { "normal", "visual", "insert", "replace", "terminal", "command", "inactive" }
	local function create_groups(prefixes)
		local combined = {}
		for _, prefix in ipairs(prefixes) do
			for _, group in ipairs(groups) do
				table.insert(combined, prefix .. group)
			end
		end
		return combined
	end
	local function loop(groups)
		for _, group in ipairs(groups) do
			vim.cmd(string.format("highlight lualine_b_%s guibg=NONE", group))
			vim.cmd(string.format("highlight lualine_c_%s guibg=NONE", group))
		end
	end
	loop(create_groups({ "filetype_DevIconDefault_", "filetype_DevIconLua_", "diagnostics_error_" }))
	loop(groups)

	vim.cmd([[Hardtime disable]])
	require("transparent").toggle()
end
vim.api.nvim_create_user_command("Transparent", function()
	transparent()
end, {})
