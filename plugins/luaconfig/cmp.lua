require("luasnip.loaders.from_vscode").lazy_load()
local cmp = require("cmp")
local luasnip = require("luasnip")
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, item)
			local kind = require("lspkind").cmp_format({
				mode = "symbol_text",
				maxwidth = 50,
				ellipsis_char = "...",
				symbol_map = { Codeium = "󰊤" },
			})(entry, item)
			local strings = vim.split(kind.kind, "%s", { trimempty = true })
			kind.kind = " " .. (strings[1] or "") .. "  "
			kind.menu = "    (" .. (strings[2] or "") .. ")"
			return kind
		end,
	},
	mapping = {
		["<C-p>"] = cmp.mapping.scroll_docs(-4),
		["<C-n>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				if luasnip.expandable() then
					luasnip.expand()
				else
					cmp.confirm({ select = true })
				end
			else
				fallback()
			end
		end),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.locally_jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.locally_jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	},
	sources = {
		{ name = "buffer", keyword_lenght = 4 },
		{ name = "codeium" },
		{ name = "luasnip" },
		{ name = "nvim_lsp" },
		{ name = "nvim_lua" },
		{ name = "nvim_lsp_signature_help" },
		{ name = "path" },
		{
			name = "spell",
			option = {
				keep_all_entries = false,
				enable_in_context = function()
					return true
				end,
			},
		},
		{
			name = "omni",
			option = { disable_omnifuncs = { "v:lua.vim.lsp.omnifunc" } },
		},
	},
})
local cols = vim.g.stylix_colors
local function hl(groups, cols)
	for _, group in ipairs(groups) do
		vim.api.nvim_set_hl(0, group, cols)
	end
end

hl({ "CmpItemMenu" }, { fg = cols.base0E, bg = "NONE" })
hl({
	"CmpItemKindInterface",
	"CmpItemKindTypeParameter",
	"CmpItemKindKeyword",
	"CmpItemKindOperator",
}, { fg = cols.base02, bg = cols.base0C })
hl({ "CmpItemKindMethod", "CmpItemKindValue", "CmpItemKindEvent" }, { fg = cols.base02, bg = cols.base0D })
hl({ "CmpItemKindUnit", "CmpItemKindSnippet", "CmpItemKindFolder" }, { fg = cols.base02, bg = cols.base09 })
hl({ "CmpItemKindConstant", "CmpItemKindConstructor", "CmpItemKindReference" }, { fg = cols.base02, bg = cols.base08 })
hl({ "CmpItemKindText", "CmpItemKindColor" }, { fg = cols.base02, bg = cols.base0B })
hl({ "CmpItemKindField", "CmpItemKindProperty", "CmpItemKindEnumMember" }, { fg = cols.base02, bg = cols.base0A })
hl({
	"CmpItemKindFunction",
	"CmpItemKindStruct",
	"CmpItemKindClass",
	"CmpItemKindModule",
	"CmpItemKindEnum",
}, { fg = cols.base02, bg = cols.base0E })
hl({ "CmpItemKindVariable", "CmpItemKindFile" }, { fg = cols.base02, bg = cols.base05 })
