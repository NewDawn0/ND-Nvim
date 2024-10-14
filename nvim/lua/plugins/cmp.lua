--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Utility
local util = require "util.util"
local theme = require("colours.theme").default
local cmp = require "cmp"
local luasnip = require "luasnip"

-- Setup luasnip
require("luasnip.loaders.from_vscode").load()

-- Setup nvim cmp
cmp.setup {
  completion = {
    completeopt = "menu,menuone,preview,noselect",
  },
  snippet = {
    expand = function(args) luasnip.lsp_expand(args.body) end,
  },
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, item)
      local kind = require("lspkind").cmp_format {
        mode = "symbol_text",
        maxwidth = 50,
        ellipsis_char = "...",
        symbol_map = { Codeium = "󰊤" },
      }(entry, item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = " " .. (strings[1] or "") .. "  "
      kind.menu = "    (" .. (strings[2] or "") .. ")"
      return kind
    end,
  },
  mapping = {
    ["<C-p>"] = cmp.mapping.scroll_docs(-4),
    ["<C-n>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        if luasnip.expandable() then
          luasnip.expand()
        else
          cmp.confirm { select = true }
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
  sources = cmp.config.sources({
    { name = "luasnip" },
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "codeium" },
    { name = "path" },
  }, {
    { name = "buffer", keyword_length = 4 },
  }),
}

-- Override colours
util.sethl({
  "CmpItemKindConstant",
  "CmpItemKindConstructor",
  "CmpItemKindReference",
}, { fg = "NONE", bg = theme.red })
util.sethl({
  "CmpItemKindEnumMember",
  "CmpItemKindField",
  "CmpItemKindProperty",
}, { fg = "NONE", bg = theme.gold })
util.sethl({
  "CmpItemKindEvent",
  "CmpItemKindMethod",
  "CmpItemKindValue",
}, { fg = "NONE", bg = theme.cyan })
util.sethl({
  "CmpItemKindColor",
  "CmpItemKindText",
}, { fg = "NONE", bg = theme.green })
util.sethl({
  "CmpItemKindFolder",
  "CmpItemKindSnippet",
  "CmpItemKindUnit",
}, { fg = "NONE", bg = theme.orange })
util.sethl({
  "CmpItemKindFile",
  "CmpItemKindVariable",
}, { fg = "NONE", bg = theme.blue })
util.sethl({
  "CmpItemKindKeyword",
  "CmpItemKindOperator",
  "CmpItemKindTypeParameter",
}, { fg = "NONE", bg = theme.pink })
util.sethl({
  "CmpItemKindClass",
  "CmpItemKindEnum",
  "CmpItemKindFunction",
  "CmpItemKindInterface",
  "CmpItemKindModule",
  "CmpItemKindStruct",
}, { fg = "NONE", bg = theme.magenta })
