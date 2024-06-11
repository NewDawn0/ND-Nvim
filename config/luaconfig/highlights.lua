local cols = vim.g.stylix_colors
local hi = function(what, highlight)
	vim.api.nvim_set_hl(0, what, highlight)
end
hi("CursorLineNr", { fg = cols.base0D, bg = nil })
hi("CursorLine", { bg = base01 })
hi("SignColumn", {})
hi("CursorColumn", {})
hi("LineNr", { fg = cols.base04 })
