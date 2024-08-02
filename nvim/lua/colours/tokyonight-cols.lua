--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Highlight themes
local theme = require("colours.theme").default

-- Setup module
local M = {}

-- Set colours
M.colors = {
  bg = theme.black,
  bg_dark = theme.black,
  bg_float = theme.black,
  bg_highlight = theme.gray2,
  bg_popup = theme.black,
  bg_search = theme.blue,
  bg_sidebar = theme.black,
  bg_statusline = theme.black,
  bg_visual = theme.gray,
  black = theme.black,
  blue = theme.blue,
  blue0 = theme.blue,
  blue1 = theme.blue,
  blue2 = theme.cyan,
  blue5 = theme.cyan,
  blue6 = theme.cyan,
  blue7 = theme.gray2,
  border = theme.black,
  border_highlight = theme.gold,
  comment = theme.gray,
  cyan = theme.cyan,
  dark3 = theme.gray,
  dark5 = theme.gray2,
  diff = {
    add = theme.green,
    change = theme.blue,
    delete = theme.red,
    text = theme.gray,
  },
  error = theme.red,
  fg = theme.white,
  fg_dark = theme.magenta,
  fg_float = theme.white,
  fg_gutter = theme.gray3,
  fg_sidebar = theme.magenta,
  git = {
    add = theme.green,
    change = theme.blue,
    delete = theme.red,
    ignore = theme.gray,
  },
  green = theme.green,
  green1 = theme.teal,
  green2 = theme.teal,
  hint = theme.green,
  info = theme.green,
  magenta = theme.magenta,
  magenta2 = theme.red,
  none = "NONE",
  orange = theme.orange,
  purple = theme.pink,
  rainbow = { theme.blue, theme.gold, theme.green, theme.teal, theme.magenta, theme.pink },
  red = theme.red,
  red1 = theme.red,
  teal = theme.teal,
  terminal_black = theme.black,
  todo = theme.blue,
  warning = theme.yellow,
  yellow = theme.yellow,
}

-- Set highlights
M.highlights = {
  ["@annotation"] = "PreProc",
  ["@attribute"] = "PreProc",
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.printf"] = "SpecialChar",
  ["@character.special"] = "SpecialChar",
  ["@comment"] = "Comment",
  ["@comment.error"] = {
    fg = theme.red,
  },
  ["@comment.hint"] = {
    fg = theme.teal,
  },
  ["@comment.info"] = {
    fg = theme.cyan,
  },
  ["@comment.note"] = {
    fg = theme.teal,
  },
  ["@comment.todo"] = {
    fg = theme.blue,
  },
  ["@comment.warning"] = {
    fg = theme.yellow,
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = theme.magenta,
  },
  ["@constructor.tsx"] = {
    fg = theme.blue,
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@function"] = "Function",
  ["@function.builtin"] = "Special",
  ["@function.call"] = "@function",
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "@function.method",
  ["@keyword"] = {
    fg = theme.pink,
    italic = true,
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = theme.magenta,
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = "@operator",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = theme.blue,
  },
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.decorator"] = "@attribute",
  ["@lsp.type.deriveHelper"] = "@attribute",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@markup.list",
  ["@lsp.type.generic"] = "@variable",
  ["@lsp.type.interface"] = {
    fg = theme.blue,
  },
  ["@lsp.type.keyword"] = "@keyword",
  ["@lsp.type.lifetime"] = "@keyword.storage",
  ["@lsp.type.namespace"] = "@module",
  ["@lsp.type.namespace.python"] = "@variable",
  ["@lsp.type.number"] = "@number",
  ["@lsp.type.operator"] = "@operator",
  ["@lsp.type.parameter"] = "@variable.parameter",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.selfKeyword"] = "@variable.builtin",
  ["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
  ["@lsp.type.string"] = "@string",
  ["@lsp.type.typeAlias"] = "@type.definition",
  ["@lsp.type.unresolvedReference"] = {
    sp = theme.red,
    undercurl = true,
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
  ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
  ["@lsp.typemod.keyword.injected"] = "@keyword",
  ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.operator.injected"] = "@operator",
  ["@lsp.typemod.string.injected"] = "@string",
  ["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.type.defaultLibrary"] = {
    fg = theme.gold,
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = theme.gold,
  },
  ["@lsp.typemod.variable.callable"] = "@function",
  ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
  ["@lsp.typemod.variable.injected"] = "@variable",
  ["@lsp.typemod.variable.static"] = "@constant",
  ["@markup"] = "@none",
  ["@markup.emphasis"] = {
    italic = true,
  },
  ["@markup.environment"] = "Macro",
  ["@markup.environment.name"] = "Type",
  ["@markup.heading"] = "Title",
  ["@markup.heading.1.markdown"] = {
    bold = true,
    fg = theme.blue,
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = theme.gold,
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = theme.green,
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = theme.teal,
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = theme.magenta,
  },
  ["@markup.heading.6.markdown"] = {
    bold = true,
    fg = theme.pink,
  },
  ["@markup.italic"] = {
    italic = true,
  },
  ["@markup.link"] = {
    fg = theme.teal,
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = theme.cyan,
  },
  ["@markup.list.checked"] = {
    fg = theme.teal,
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = theme.orange,
  },
  ["@markup.list.unchecked"] = {
    fg = theme.blue,
  },
  ["@markup.math"] = "Special",
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = theme.black,
    fg = theme.blue,
  },
  ["@markup.strikethrough"] = {
    strikethrough = true,
  },
  ["@markup.strong"] = {
    bold = true,
  },
  ["@markup.underline"] = {
    underline = true,
  },
  ["@module"] = "Include",
  ["@module.builtin"] = {
    fg = theme.red,
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = {
    fg = theme.cyan,
  },
  ["@property"] = {
    fg = theme.teal,
  },
  ["@punctuation.bracket"] = {
    fg = theme.magenta,
  },
  ["@punctuation.delimiter"] = {
    fg = theme.cyan,
  },
  ["@punctuation.special"] = {
    fg = theme.cyan,
  },
  ["@string"] = "String",
  ["@string.documentation"] = {
    fg = theme.gold,
  },
  ["@string.escape"] = {
    fg = theme.magenta,
  },
  ["@string.regexp"] = {
    fg = theme.cyan,
  },
  ["@tag"] = "Label",
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = theme.blue,
  },
  ["@tag.javascript"] = {
    fg = theme.red,
  },
  ["@tag.tsx"] = {
    fg = theme.red,
  },
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = theme.gold,
  },
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = theme.white,
  },
  ["@variable.builtin"] = {
    fg = theme.red,
  },
  ["@variable.member"] = {
    fg = theme.teal,
  },
  ["@variable.parameter"] = {
    fg = theme.gold,
  },
  ["@variable.parameter.builtin"] = {
    fg = theme.gold,
  },
  ALEErrorSign = {
    fg = theme.red,
  },
  ALEWarningSign = {
    fg = theme.yellow,
  },
  AerialArrayIcon = "LspKindArray",
  AerialBooleanIcon = "LspKindBoolean",
  AerialClassIcon = "LspKindClass",
  AerialColorIcon = "LspKindColor",
  AerialConstantIcon = "LspKindConstant",
  AerialConstructorIcon = "LspKindConstructor",
  AerialEnumIcon = "LspKindEnum",
  AerialEnumMemberIcon = "LspKindEnumMember",
  AerialEventIcon = "LspKindEvent",
  AerialFieldIcon = "LspKindField",
  AerialFileIcon = "LspKindFile",
  AerialFolderIcon = "LspKindFolder",
  AerialFunctionIcon = "LspKindFunction",
  AerialGuide = {
    fg = theme.gray3,
  },
  AerialInterfaceIcon = "LspKindInterface",
  AerialKeyIcon = "LspKindKey",
  AerialKeywordIcon = "LspKindKeyword",
  AerialLine = "LspInlayHint",
  AerialMethodIcon = "LspKindMethod",
  AerialModuleIcon = "LspKindModule",
  AerialNamespaceIcon = "LspKindNamespace",
  AerialNormal = {
    bg = "NONE",
    fg = theme.white,
  },
  AerialNullIcon = "LspKindNull",
  AerialNumberIcon = "LspKindNumber",
  AerialObjectIcon = "LspKindObject",
  AerialOperatorIcon = "LspKindOperator",
  AerialPackageIcon = "LspKindPackage",
  AerialPropertyIcon = "LspKindProperty",
  AerialReferenceIcon = "LspKindReference",
  AerialSnippetIcon = "LspKindSnippet",
  AerialStringIcon = "LspKindString",
  AerialStructIcon = "LspKindStruct",
  AerialTextIcon = "LspKindText",
  AerialTypeParameterIcon = "LspKindTypeParameter",
  AerialUnitIcon = "LspKindUnit",
  AerialValueIcon = "LspKindValue",
  AerialVariableIcon = "LspKindVariable",
  AlphaButtons = {
    fg = theme.cyan,
  },
  AlphaFooter = {
    fg = theme.blue,
  },
  AlphaHeader = {
    fg = theme.blue,
  },
  AlphaHeaderLabel = {
    fg = theme.orange,
  },
  AlphaShortcut = {
    fg = theme.orange,
  },
  Bold = {
    bold = true,
    fg = theme.white,
  },
  BufferAlternate = {
    bg = theme.gray3,
    fg = theme.white,
  },
  BufferAlternateERROR = {
    bg = theme.gray3,
    fg = theme.red,
  },
  BufferAlternateHINT = {
    bg = theme.gray3,
    fg = theme.cyan,
  },
  BufferAlternateINFO = {
    bg = theme.gray3,
    fg = theme.cyan,
  },
  BufferAlternateIndex = {
    bg = theme.gray3,
    fg = theme.cyan,
  },
  BufferAlternateMod = {
    bg = theme.gray3,
    fg = theme.gold,
  },
  BufferAlternateSign = {
    bg = theme.gray3,
    fg = theme.cyan,
  },
  BufferAlternateTarget = {
    bg = theme.gray3,
    fg = theme.red,
  },
  BufferAlternateWARN = {
    bg = theme.gray3,
    fg = theme.yellow,
  },
  BufferCurrent = {
    bg = theme.black,
    fg = theme.white,
  },
  BufferCurrentERROR = {
    bg = theme.black,
    fg = theme.red,
  },
  BufferCurrentHINT = {
    bg = theme.black,
    fg = theme.cyan,
  },
  BufferCurrentINFO = {
    bg = theme.black,
    fg = theme.cyan,
  },
  BufferCurrentIndex = {
    bg = theme.black,
    fg = theme.cyan,
  },
  BufferCurrentMod = {
    bg = theme.black,
    fg = theme.gold,
  },
  BufferCurrentSign = {
    bg = theme.black,
    fg = theme.black,
  },
  BufferCurrentTarget = {
    bg = theme.black,
    fg = theme.red,
  },
  BufferCurrentWARN = {
    bg = theme.black,
    fg = theme.yellow,
  },
  BufferInactive = {
    bg = theme.black,
    fg = theme.gray2,
  },
  BufferInactiveERROR = {
    bg = theme.black,
    fg = theme.red,
  },
  BufferInactiveHINT = {
    bg = theme.black,
    fg = theme.cyan,
  },
  BufferInactiveINFO = {
    bg = theme.black,
    fg = theme.cyan,
  },
  BufferInactiveIndex = {
    bg = theme.black,
    fg = theme.gray2,
  },
  BufferInactiveMod = {
    bg = theme.black,
    fg = theme.gold,
  },
  BufferInactiveSign = {
    bg = theme.black,
    fg = theme.black,
  },
  BufferInactiveTarget = {
    bg = theme.black,
    fg = theme.red,
  },
  BufferInactiveWARN = {
    bg = theme.black,
    fg = theme.yellow,
  },
  BufferLineIndicatorSelected = {
    fg = theme.blue,
  },
  BufferOffset = {
    bg = theme.black,
    fg = theme.gray2,
  },
  BufferTabpageFill = {
    bg = theme.gray4,
    fg = theme.gray2,
  },
  BufferTabpages = {
    bg = theme.gray4,
    fg = "NONE",
  },
  BufferVisible = {
    bg = theme.black,
    fg = theme.white,
  },
  BufferVisibleERROR = {
    bg = theme.black,
    fg = theme.red,
  },
  BufferVisibleHINT = {
    bg = theme.black,
    fg = theme.cyan,
  },
  BufferVisibleINFO = {
    bg = theme.black,
    fg = theme.cyan,
  },
  BufferVisibleIndex = {
    bg = theme.black,
    fg = theme.cyan,
  },
  BufferVisibleMod = {
    bg = theme.black,
    fg = theme.gold,
  },
  BufferVisibleSign = {
    bg = theme.black,
    fg = theme.cyan,
  },
  BufferVisibleTarget = {
    bg = theme.black,
    fg = theme.red,
  },
  BufferVisibleWARN = {
    bg = theme.black,
    fg = theme.yellow,
  },
  Character = {
    fg = theme.green,
  },
  CmpDocumentation = {
    bg = theme.black,
    fg = theme.white,
  },
  CmpDocumentationBorder = {
    bg = theme.black,
    fg = theme.gold,
  },
  CmpGhostText = {
    fg = theme.black,
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = theme.white,
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = theme.gray3,
    strikethrough = true,
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = theme.blue,
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = theme.blue,
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = theme.teal,
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = theme.teal,
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = theme.magenta,
  },
  CmpItemKindEnum = "LspKindEnum",
  CmpItemKindEnumMember = "LspKindEnumMember",
  CmpItemKindEvent = "LspKindEvent",
  CmpItemKindField = "LspKindField",
  CmpItemKindFile = "LspKindFile",
  CmpItemKindFolder = "LspKindFolder",
  CmpItemKindFunction = "LspKindFunction",
  CmpItemKindInterface = "LspKindInterface",
  CmpItemKindKey = "LspKindKey",
  CmpItemKindKeyword = "LspKindKeyword",
  CmpItemKindMethod = "LspKindMethod",
  CmpItemKindModule = "LspKindModule",
  CmpItemKindNamespace = "LspKindNamespace",
  CmpItemKindNull = "LspKindNull",
  CmpItemKindNumber = "LspKindNumber",
  CmpItemKindObject = "LspKindObject",
  CmpItemKindOperator = "LspKindOperator",
  CmpItemKindPackage = "LspKindPackage",
  CmpItemKindProperty = "LspKindProperty",
  CmpItemKindReference = "LspKindReference",
  CmpItemKindSnippet = "LspKindSnippet",
  CmpItemKindString = "LspKindString",
  CmpItemKindStruct = "LspKindStruct",
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = theme.teal,
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = theme.gray,
  },
  CodeBlock = {
    bg = theme.black,
  },
  ColorColumn = {
    bg = theme.black,
  },
  Comment = {
    fg = theme.gray,
    italic = true,
  },
  Conceal = {
    fg = theme.gray2,
  },
  Constant = {
    fg = theme.orange,
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = theme.white,
    fg = theme.black,
  },
  CursorColumn = {
    bg = theme.gray2,
  },
  CursorIM = {
    bg = theme.white,
    fg = theme.black,
  },
  CursorLine = {
    bg = theme.gray2,
  },
  CursorLineNr = {
    bold = true,
    fg = theme.orange,
  },
  DapStoppedLine = {
    bg = theme.black,
  },
  DashboardDesc = {
    fg = theme.cyan,
  },
  DashboardFiles = {
    fg = theme.blue,
  },
  DashboardFooter = {
    fg = theme.blue,
  },
  DashboardHeader = {
    fg = theme.blue,
  },
  DashboardIcon = {
    bold = true,
    fg = theme.cyan,
  },
  DashboardKey = {
    fg = theme.orange,
  },
  DashboardMruIcon = {
    fg = theme.pink,
  },
  DashboardMruTitle = {
    fg = theme.cyan,
  },
  DashboardProjectIcon = {
    fg = theme.gold,
  },
  DashboardProjectTitle = {
    fg = theme.cyan,
  },
  DashboardProjectTitleIcon = {
    fg = theme.orange,
  },
  DashboardShortCut = {
    fg = theme.cyan,
  },
  DashboardShortCutIcon = {
    fg = theme.magenta,
  },
  Debug = {
    fg = theme.magenta,
  },
  DefinitionCount = {
    fg = theme.pink,
  },
  DefinitionIcon = {
    fg = theme.blue,
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = theme.red,
  },
  DiagnosticHint = {
    fg = theme.cyan,
  },
  DiagnosticInfo = {
    fg = theme.cyan,
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = theme.red,
    undercurl = true,
  },
  DiagnosticUnderlineHint = {
    sp = theme.cyan,
    undercurl = true,
  },
  DiagnosticUnderlineInfo = {
    sp = theme.cyan,
    undercurl = true,
  },
  DiagnosticUnderlineWarn = {
    sp = theme.yellow,
    undercurl = true,
  },
  DiagnosticUnnecessary = {
    fg = theme.black,
  },
  DiagnosticVirtualTextError = {
    bg = theme.gray4,
    fg = theme.red,
  },
  DiagnosticVirtualTextHint = {
    bg = theme.gray4,
    fg = theme.cyan,
  },
  DiagnosticVirtualTextInfo = {
    bg = theme.gray4,
    fg = theme.green,
  },
  DiagnosticVirtualTextWarn = {
    bg = theme.black,
    fg = theme.yellow,
  },
  DiagnosticWarn = {
    fg = theme.yellow,
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = theme.green,
  },
  DiffChange = {
    bg = theme.gray4,
  },
  DiffDelete = {
    bg = theme.red,
  },
  DiffText = {
    bg = theme.gray2,
  },
  Directory = {
    fg = theme.blue,
  },
  EndOfBuffer = {
    fg = theme.black,
  },
  Error = {
    fg = theme.red,
  },
  ErrorMsg = {
    fg = theme.red,
  },
  FlashBackdrop = {
    fg = theme.gray,
  },
  FlashLabel = {
    bg = theme.red,
    bold = true,
    fg = theme.white,
  },
  FloatBorder = {
    bg = theme.black,
    fg = theme.gold,
  },
  FloatTitle = {
    bg = theme.black,
    fg = theme.gold,
  },
  FoldColumn = {
    bg = theme.black,
    fg = theme.gray,
  },
  Folded = {
    bg = theme.gray3,
    fg = theme.blue,
  },
  Foo = {
    bg = theme.red,
    fg = theme.white,
  },
  Function = {
    fg = theme.blue,
  },
  FzfLuaBorder = {
    bg = theme.black,
    fg = theme.gold,
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = theme.magenta,
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = theme.white,
  },
  FzfLuaFzfPointer = {
    fg = theme.red,
  },
  FzfLuaFzfSeparator = {
    bg = theme.black,
    fg = theme.orange,
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = theme.black,
    fg = theme.white,
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = theme.black,
    fg = theme.gold,
  },
  FzfLuaTitle = {
    bg = theme.black,
    fg = theme.orange,
  },
  GitGutterAdd = {
    fg = theme.green,
  },
  GitGutterAddLineNr = {
    fg = theme.green,
  },
  GitGutterChange = {
    fg = theme.blue,
  },
  GitGutterChangeLineNr = {
    fg = theme.blue,
  },
  GitGutterDelete = {
    fg = theme.red,
  },
  GitGutterDeleteLineNr = {
    fg = theme.red,
  },
  GitSignsAdd = {
    fg = theme.green,
  },
  GitSignsChange = {
    fg = theme.blue,
  },
  GitSignsDelete = {
    fg = theme.red,
  },
  GlyphPalette1 = {
    fg = theme.red,
  },
  GlyphPalette2 = {
    fg = theme.green,
  },
  GlyphPalette3 = {
    fg = theme.gold,
  },
  GlyphPalette4 = {
    fg = theme.blue,
  },
  GlyphPalette6 = {
    fg = theme.teal,
  },
  GlyphPalette7 = {
    fg = theme.white,
  },
  GlyphPalette9 = {
    fg = theme.red,
  },
  GrugFarHelpHeader = {
    fg = theme.gray,
  },
  GrugFarHelpHeaderKey = {
    fg = theme.cyan,
  },
  GrugFarInputLabel = {
    fg = theme.blue,
  },
  GrugFarInputPlaceholder = {
    fg = theme.gray,
  },
  GrugFarResultsChangeIndicator = {
    fg = theme.blue,
  },
  GrugFarResultsHeader = {
    fg = theme.orange,
  },
  GrugFarResultsMatch = {
    bg = theme.red,
    fg = theme.black,
  },
  GrugFarResultsStats = {
    fg = theme.blue,
  },
  Headline = "Headline1",
  Headline1 = {
    bg = theme.gray4,
  },
  Headline2 = {
    bg = theme.gray4,
  },
  Headline3 = {
    bg = theme.gray3,
  },
  Headline4 = {
    bg = theme.gray3,
  },
  Headline5 = {
    bg = theme.gray2,
  },
  Headline6 = {
    bg = theme.gray2,
  },
  HopNextKey = {
    bold = true,
    fg = theme.red,
  },
  HopNextKey1 = {
    bold = true,
    fg = theme.cyan,
  },
  HopNextKey2 = {
    fg = theme.teal,
  },
  HopUnmatched = {
    fg = theme.gray,
  },
  IblIndent = {
    fg = theme.gray3,
    nocombine = true,
  },
  IblScope = {
    fg = theme.blue,
    nocombine = true,
  },
  Identifier = {
    fg = theme.magenta,
  },
  IlluminatedWordRead = {
    bg = theme.gray3,
  },
  IlluminatedWordText = {
    bg = theme.gray3,
  },
  IlluminatedWordWrite = {
    bg = theme.gray3,
  },
  IncSearch = {
    bg = theme.orange,
    fg = theme.black,
  },
  IndentBlanklineChar = {
    fg = theme.gray3,
    nocombine = true,
  },
  IndentBlanklineContextChar = {
    fg = theme.blue,
    nocombine = true,
  },
  IndentLine = {
    fg = theme.gray3,
    nocombine = true,
  },
  IndentLineCurrent = {
    fg = theme.blue,
    nocombine = true,
  },
  Italic = {
    fg = theme.white,
    italic = true,
  },
  Keyword = {
    fg = theme.cyan,
    italic = true,
  },
  LazyProgressDone = {
    bold = true,
    fg = theme.red,
  },
  LazyProgressTodo = {
    bold = true,
    fg = theme.gray3,
  },
  LeapBackdrop = {
    fg = theme.gray,
  },
  LeapLabel = {
    bold = true,
    fg = theme.red,
  },
  LeapMatch = {
    bg = theme.red,
    bold = true,
    fg = theme.white,
  },
  LineNr = {
    fg = theme.gray3,
  },
  LineNrAbove = {
    fg = theme.gray3,
  },
  LineNrBelow = {
    fg = theme.gray3,
  },
  LspCodeLens = {
    fg = theme.gray,
  },
  LspFloatWinBorder = {
    fg = theme.gold,
  },
  LspFloatWinNormal = {
    bg = theme.black,
  },
  LspInfoBorder = {
    bg = theme.black,
    fg = theme.green,
  },
  LspInlayHint = {
    bg = theme.black,
    fg = theme.gray,
  },
  LspKindArray = "@punctuation.bracket",
  LspKindBoolean = "@boolean",
  LspKindClass = "@type",
  LspKindColor = "Special",
  LspKindConstant = "@constant",
  LspKindConstructor = "@constructor",
  LspKindEnum = "@lsp.type.enum",
  LspKindEnumMember = "@lsp.type.enumMember",
  LspKindEvent = "Special",
  LspKindField = "@variable.member",
  LspKindFile = "Normal",
  LspKindFolder = "Directory",
  LspKindFunction = "@function",
  LspKindInterface = "@lsp.type.interface",
  LspKindKey = "@variable.member",
  LspKindKeyword = "@lsp.type.keyword",
  LspKindMethod = "@function.method",
  LspKindModule = "@module",
  LspKindNamespace = "@module",
  LspKindNull = "@constant.builtin",
  LspKindNumber = "@number",
  LspKindObject = "@constant",
  LspKindOperator = "@operator",
  LspKindPackage = "@module",
  LspKindProperty = "@property",
  LspKindReference = "@markup.link",
  LspKindSnippet = "Conceal",
  LspKindString = "@string",
  LspKindStruct = "@lsp.type.struct",
  LspKindText = "@markup",
  LspKindTypeParameter = "@lsp.type.typeParameter",
  LspKindUnit = "@lsp.type.struct",
  LspKindValue = "@string",
  LspKindVariable = "@variable",
  LspReferenceRead = {
    bg = theme.gray3,
  },
  LspReferenceText = {
    bg = theme.gray3,
  },
  LspReferenceWrite = {
    bg = theme.gray3,
  },
  LspSagaBorderTitle = {
    fg = theme.cyan,
  },
  LspSagaCodeActionBorder = {
    fg = theme.blue,
  },
  LspSagaCodeActionContent = {
    fg = theme.pink,
  },
  LspSagaCodeActionTitle = {
    fg = theme.blue,
  },
  LspSagaDefPreviewBorder = {
    fg = theme.green,
  },
  LspSagaFinderSelection = {
    fg = theme.gray,
  },
  LspSagaHoverBorder = {
    fg = theme.blue,
  },
  LspSagaRenameBorder = {
    fg = theme.green,
  },
  LspSagaSignatureHelpBorder = {
    fg = theme.red,
  },
  LspSignatureActiveParameter = {
    bg = theme.gray2,
    bold = true,
  },
  MatchParen = {
    bold = true,
    fg = theme.orange,
  },
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true,
  },
  MiniAnimateNormalFloat = "NormalFloat",
  MiniClueBorder = "FloatBorder",
  MiniClueDescGroup = "DiagnosticFloatingWarn",
  MiniClueDescSingle = "NormalFloat",
  MiniClueNextKey = "DiagnosticFloatingHint",
  MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
  MiniClueSeparator = "DiagnosticFloatingInfo",
  MiniClueTitle = "FloatTitle",
  MiniCompletionActiveParameter = {
    underline = true,
  },
  MiniCursorword = {
    bg = theme.gray3,
  },
  MiniCursorwordCurrent = {
    bg = theme.gray3,
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = theme.red,
    fg = theme.black,
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = theme.green,
    fg = theme.black,
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = theme.green,
  },
  MiniDiffSignChange = {
    fg = theme.blue,
  },
  MiniDiffSignDelete = {
    fg = theme.red,
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = theme.white,
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = theme.black,
    bold = true,
    fg = theme.gold,
  },
  MiniHipatternsFixme = {
    bg = theme.red,
    bold = true,
    fg = theme.black,
  },
  MiniHipatternsHack = {
    bg = theme.gold,
    bold = true,
    fg = theme.black,
  },
  MiniHipatternsNote = {
    bg = theme.teal,
    bold = true,
    fg = theme.black,
  },
  MiniHipatternsTodo = {
    bg = theme.cyan,
    bold = true,
    fg = theme.black,
  },
  MiniIconsAzure = {
    fg = theme.cyan,
  },
  MiniIconsBlue = {
    fg = theme.blue,
  },
  MiniIconsCyan = {
    fg = theme.teal,
  },
  MiniIconsGreen = {
    fg = theme.green,
  },
  MiniIconsGrey = {
    fg = theme.white,
  },
  MiniIconsOrange = {
    fg = theme.orange,
  },
  MiniIconsPurple = {
    fg = theme.pink,
  },
  MiniIconsRed = {
    fg = theme.red,
  },
  MiniIconsYellow = {
    fg = theme.gold,
  },
  MiniIndentscopePrefix = {
    nocombine = true,
  },
  MiniIndentscopeSymbol = {
    fg = theme.blue,
    nocombine = true,
  },
  MiniJump = {
    bg = theme.red,
    fg = theme.white,
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = theme.red,
    nocombine = true,
  },
  MiniJump2dSpotAhead = {
    bg = theme.black,
    fg = theme.teal,
    nocombine = true,
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = theme.orange,
    nocombine = true,
  },
  MiniMapNormal = "NormalFloat",
  MiniMapSymbolCount = "Special",
  MiniMapSymbolLine = "Title",
  MiniMapSymbolView = "Delimiter",
  MiniNotifyBorder = "FloatBorder",
  MiniNotifyNormal = "NormalFloat",
  MiniNotifyTitle = "FloatTitle",
  MiniOperatorsExchangeFrom = "IncSearch",
  MiniPickBorder = "FloatBorder",
  MiniPickBorderBusy = "DiagnosticFloatingWarn",
  MiniPickBorderText = {
    bg = theme.black,
    fg = theme.teal,
  },
  MiniPickHeader = "DiagnosticFloatingHint",
  MiniPickIconDirectory = "Directory",
  MiniPickIconFile = "MiniPickNormal",
  MiniPickMatchCurrent = "CursorLine",
  MiniPickMatchMarked = "Visual",
  MiniPickMatchRanges = "DiagnosticFloatingHint",
  MiniPickNormal = "NormalFloat",
  MiniPickPreviewLine = "CursorLine",
  MiniPickPreviewRegion = "IncSearch",
  MiniPickPrompt = {
    bg = theme.black,
    fg = theme.cyan,
  },
  MiniStarterCurrent = {
    nocombine = true,
  },
  MiniStarterFooter = {
    fg = theme.gold,
    italic = true,
  },
  MiniStarterHeader = {
    fg = theme.blue,
  },
  MiniStarterInactive = {
    fg = theme.gray,
    italic = true,
  },
  MiniStarterItem = {
    bg = theme.black,
    fg = theme.white,
  },
  MiniStarterItemBullet = {
    fg = theme.gold,
  },
  MiniStarterItemPrefix = {
    fg = theme.gold,
  },
  MiniStarterQuery = {
    fg = theme.cyan,
  },
  MiniStarterSection = {
    fg = theme.blue,
  },
  MiniStatuslineDevinfo = {
    bg = theme.gray3,
    fg = theme.green,
  },
  MiniStatuslineFileinfo = {
    bg = theme.gray3,
    fg = theme.green,
  },
  MiniStatuslineFilename = {
    bg = theme.gray2,
    fg = theme.magenta,
  },
  MiniStatuslineInactive = {
    bg = theme.black,
    fg = theme.blue,
  },
  MiniStatuslineModeCommand = {
    bg = theme.gold,
    bold = true,
    fg = theme.black,
  },
  MiniStatuslineModeInsert = {
    bg = theme.green,
    bold = true,
    fg = theme.black,
  },
  MiniStatuslineModeNormal = {
    bg = theme.blue,
    bold = true,
    fg = theme.black,
  },
  MiniStatuslineModeOther = {
    bg = theme.teal,
    bold = true,
    fg = theme.black,
  },
  MiniStatuslineModeReplace = {
    bg = theme.red,
    bold = true,
    fg = theme.black,
  },
  MiniStatuslineModeVisual = {
    bg = theme.magenta,
    bold = true,
    fg = theme.black,
  },
  MiniSurround = {
    bg = theme.orange,
    fg = theme.black,
  },
  MiniTablineCurrent = {
    bg = theme.gray3,
    fg = theme.white,
  },
  MiniTablineFill = {
    bg = theme.black,
  },
  MiniTablineHidden = {
    bg = theme.black,
    fg = theme.gray2,
  },
  MiniTablineModifiedCurrent = {
    bg = theme.gray3,
    fg = theme.gold,
  },
  MiniTablineModifiedHidden = {
    bg = theme.black,
    fg = theme.gold,
  },
  MiniTablineModifiedVisible = {
    bg = theme.black,
    fg = theme.gold,
  },
  MiniTablineTabpagesection = {
    bg = theme.black,
    fg = "NONE",
  },
  MiniTablineVisible = {
    bg = theme.black,
    fg = theme.white,
  },
  MiniTestEmphasis = {
    bold = true,
  },
  MiniTestFail = {
    bold = true,
    fg = theme.red,
  },
  MiniTestPass = {
    bold = true,
    fg = theme.green,
  },
  MiniTrailspace = {
    bg = theme.red,
  },
  ModeMsg = {
    bold = true,
    fg = theme.magenta,
  },
  MoreMsg = {
    fg = theme.blue,
  },
  MsgArea = {
    fg = theme.magenta,
  },
  NavicIconsArray = "LspKindArray",
  NavicIconsBoolean = "LspKindBoolean",
  NavicIconsClass = "LspKindClass",
  NavicIconsColor = "LspKindColor",
  NavicIconsConstant = "LspKindConstant",
  NavicIconsConstructor = "LspKindConstructor",
  NavicIconsEnum = "LspKindEnum",
  NavicIconsEnumMember = "LspKindEnumMember",
  NavicIconsEvent = "LspKindEvent",
  NavicIconsField = "LspKindField",
  NavicIconsFile = "LspKindFile",
  NavicIconsFolder = "LspKindFolder",
  NavicIconsFunction = "LspKindFunction",
  NavicIconsInterface = "LspKindInterface",
  NavicIconsKey = "LspKindKey",
  NavicIconsKeyword = "LspKindKeyword",
  NavicIconsMethod = "LspKindMethod",
  NavicIconsModule = "LspKindModule",
  NavicIconsNamespace = "LspKindNamespace",
  NavicIconsNull = "LspKindNull",
  NavicIconsNumber = "LspKindNumber",
  NavicIconsObject = "LspKindObject",
  NavicIconsOperator = "LspKindOperator",
  NavicIconsPackage = "LspKindPackage",
  NavicIconsProperty = "LspKindProperty",
  NavicIconsReference = "LspKindReference",
  NavicIconsSnippet = "LspKindSnippet",
  NavicIconsString = "LspKindString",
  NavicIconsStruct = "LspKindStruct",
  NavicIconsText = "LspKindText",
  NavicIconsTypeParameter = "LspKindTypeParameter",
  NavicIconsUnit = "LspKindUnit",
  NavicIconsValue = "LspKindValue",
  NavicIconsVariable = "LspKindVariable",
  NavicSeparator = {
    bg = "NONE",
    fg = theme.white,
  },
  NavicText = {
    bg = "NONE",
    fg = theme.white,
  },
  NeoTreeDimText = {
    fg = theme.gray3,
  },
  NeoTreeFileName = {
    fg = theme.cyan,
  },
  NeoTreeGitModified = {
    fg = theme.blue,
  },
  NeoTreeGitStaged = {
    fg = theme.yellow,
  },
  NeoTreeGitUntracked = {
    fg = theme.teal,
  },
  NeoTreeNormal = {
    bg = theme.black,
    fg = theme.magenta,
  },
  NeoTreeNormalNC = {
    bg = theme.black,
    fg = theme.magenta,
  },
  NeoTreeTabActive = {
    bg = theme.black,
    bold = true,
    fg = theme.blue,
  },
  NeoTreeTabInactive = {
    bg = theme.black,
    fg = theme.gray,
  },
  NeoTreeTabSeparatorActive = {
    bg = theme.black,
    fg = theme.blue,
  },
  NeoTreeTabSeparatorInactive = {
    bg = theme.black,
    fg = theme.black,
  },
  NeogitBranch = {
    fg = theme.pink,
  },
  NeogitDiffAddHighlight = {
    bg = theme.gray4,
    fg = theme.green,
  },
  NeogitDiffContextHighlight = {
    bg = theme.gray2,
    fg = theme.magenta,
  },
  NeogitDiffDeleteHighlight = {
    bg = theme.red,
    fg = theme.white,
  },
  NeogitHunkHeader = {
    bg = theme.gray2,
    fg = theme.white,
  },
  NeogitHunkHeaderHighlight = {
    bg = theme.gray3,
    fg = theme.blue,
  },
  NeogitRemote = {
    fg = theme.pink,
  },
  NeotestAdapterName = {
    bold = true,
    fg = theme.pink,
  },
  NeotestBorder = {
    fg = theme.blue,
  },
  NeotestDir = {
    fg = theme.blue,
  },
  NeotestExpandMarker = {
    fg = theme.magenta,
  },
  NeotestFailed = {
    fg = theme.red,
  },
  NeotestFile = {
    fg = theme.teal,
  },
  NeotestFocused = {
    fg = theme.gold,
  },
  NeotestIndent = {
    fg = theme.magenta,
  },
  NeotestMarked = {
    fg = theme.blue,
  },
  NeotestNamespace = {
    fg = theme.teal,
  },
  NeotestPassed = {
    fg = theme.green,
  },
  NeotestRunning = {
    fg = theme.gold,
  },
  NeotestSkipped = {
    fg = theme.blue,
  },
  NeotestTarget = {
    fg = theme.blue,
  },
  NeotestTest = {
    fg = theme.magenta,
  },
  NeotestWinSelect = {
    fg = theme.blue,
  },
  NoiceCmdlineIconInput = {
    fg = theme.gold,
  },
  NoiceCmdlineIconLua = {
    fg = theme.blue,
  },
  NoiceCmdlinePopupBorderInput = {
    fg = theme.gold,
  },
  NoiceCmdlinePopupBorderLua = {
    fg = theme.blue,
  },
  NoiceCmdlinePopupTitleInput = {
    fg = theme.gold,
  },
  NoiceCmdlinePopupTitleLua = {
    fg = theme.blue,
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = theme.magenta,
  },
  NoiceCompletionItemKindEnum = "LspKindEnum",
  NoiceCompletionItemKindEnumMember = "LspKindEnumMember",
  NoiceCompletionItemKindEvent = "LspKindEvent",
  NoiceCompletionItemKindField = "LspKindField",
  NoiceCompletionItemKindFile = "LspKindFile",
  NoiceCompletionItemKindFolder = "LspKindFolder",
  NoiceCompletionItemKindFunction = "LspKindFunction",
  NoiceCompletionItemKindInterface = "LspKindInterface",
  NoiceCompletionItemKindKey = "LspKindKey",
  NoiceCompletionItemKindKeyword = "LspKindKeyword",
  NoiceCompletionItemKindMethod = "LspKindMethod",
  NoiceCompletionItemKindModule = "LspKindModule",
  NoiceCompletionItemKindNamespace = "LspKindNamespace",
  NoiceCompletionItemKindNull = "LspKindNull",
  NoiceCompletionItemKindNumber = "LspKindNumber",
  NoiceCompletionItemKindObject = "LspKindObject",
  NoiceCompletionItemKindOperator = "LspKindOperator",
  NoiceCompletionItemKindPackage = "LspKindPackage",
  NoiceCompletionItemKindProperty = "LspKindProperty",
  NoiceCompletionItemKindReference = "LspKindReference",
  NoiceCompletionItemKindSnippet = "LspKindSnippet",
  NoiceCompletionItemKindString = "LspKindString",
  NoiceCompletionItemKindStruct = "LspKindStruct",
  NoiceCompletionItemKindText = "LspKindText",
  NoiceCompletionItemKindTypeParameter = "LspKindTypeParameter",
  NoiceCompletionItemKindUnit = "LspKindUnit",
  NoiceCompletionItemKindValue = "LspKindValue",
  NoiceCompletionItemKindVariable = "LspKindVariable",
  NonText = {
    fg = theme.gray,
  },
  Normal = {
    bg = theme.black,
    fg = theme.white,
  },
  NormalFloat = {
    bg = theme.black,
    fg = theme.white,
  },
  NormalNC = {
    bg = theme.black,
    fg = theme.white,
  },
  NormalSB = {
    bg = theme.black,
    fg = theme.magenta,
  },
  NotifyBackground = {
    bg = theme.black,
    fg = theme.white,
  },
  NotifyDEBUGBody = {
    bg = theme.black,
    fg = theme.white,
  },
  NotifyDEBUGBorder = {
    bg = theme.black,
    fg = theme.magenta,
  },
  NotifyDEBUGIcon = {
    fg = theme.magenta,
  },
  NotifyDEBUGTitle = {
    fg = theme.magenta,
  },
  NotifyERRORBody = {
    bg = theme.black,
    fg = theme.white,
  },
  NotifyERRORBorder = {
    bg = theme.black,
    fg = theme.red,
  },
  NotifyERRORIcon = {
    fg = theme.red,
  },
  NotifyERRORTitle = {
    fg = theme.red,
  },
  NotifyINFOBody = {
    bg = theme.black,
    fg = theme.white,
  },
  NotifyINFOBorder = {
    bg = theme.black,
    fg = theme.green,
  },
  NotifyINFOIcon = {
    fg = theme.green,
  },
  NotifyINFOTitle = {
    fg = theme.green,
  },
  NotifyTRACEBody = {
    bg = theme.black,
    fg = theme.white,
  },
  NotifyTRACEBorder = {
    bg = theme.black,
    fg = theme.orange,
  },
  NotifyTRACEIcon = {
    fg = theme.orange,
  },
  NotifyTRACETitle = {
    fg = theme.orange,
  },
  NotifyWARNBody = {
    bg = theme.black,
    fg = theme.white,
  },
  NotifyWARNBorder = {
    bg = theme.black,
    fg = theme.yellow,
  },
  NotifyWARNIcon = {
    fg = theme.yellow,
  },
  NotifyWARNTitle = {
    fg = theme.yellow,
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = theme.blue,
  },
  NvimTreeGitDeleted = {
    fg = theme.red,
  },
  NvimTreeGitDirty = {
    fg = theme.blue,
  },
  NvimTreeGitNew = {
    fg = theme.green,
  },
  NvimTreeImageFile = {
    fg = theme.magenta,
  },
  NvimTreeIndentMarker = {
    fg = theme.gray3,
  },
  NvimTreeNormal = {
    bg = theme.black,
    fg = theme.magenta,
  },
  NvimTreeNormalNC = {
    bg = theme.black,
    fg = theme.magenta,
  },
  NvimTreeOpenedFile = {
    bg = theme.gray2,
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = theme.blue,
  },
  NvimTreeSpecialFile = {
    fg = theme.pink,
    underline = true,
  },
  NvimTreeSymlink = {
    fg = theme.blue,
  },
  NvimTreeWinSeparator = {
    bg = theme.black,
    fg = theme.black,
  },
  OctoDetailsLabel = {
    bold = true,
    fg = theme.blue,
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = theme.orange,
  },
  OctoIssueTitle = {
    bold = true,
    fg = theme.pink,
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = theme.gray2,
    fg = theme.red,
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = theme.blue,
  },
  Operator = {
    fg = theme.cyan,
  },
  Pmenu = {
    bg = theme.black,
    fg = theme.white,
  },
  PmenuSbar = {
    bg = theme.gray2,
  },
  PmenuSel = {
    bg = theme.gray2,
  },
  PmenuThumb = {
    bg = theme.gray3,
  },
  PreProc = {
    fg = theme.cyan,
  },
  Question = {
    fg = theme.blue,
  },
  QuickFixLine = {
    bg = theme.gray,
    bold = true,
  },
  RainbowDelimiterBlue = {
    fg = theme.blue,
  },
  RainbowDelimiterCyan = {
    fg = theme.cyan,
  },
  RainbowDelimiterGreen = {
    fg = theme.green,
  },
  RainbowDelimiterOrange = {
    fg = theme.orange,
  },
  RainbowDelimiterRed = {
    fg = theme.red,
  },
  RainbowDelimiterViolet = {
    fg = theme.pink,
  },
  RainbowDelimiterYellow = {
    fg = theme.gold,
  },
  ReferencesCount = {
    fg = theme.pink,
  },
  ReferencesIcon = {
    fg = theme.blue,
  },
  ScrollbarError = {
    bg = "NONE",
    fg = theme.red,
  },
  ScrollbarErrorHandle = {
    bg = theme.gray2,
    fg = theme.red,
  },
  ScrollbarHandle = {
    bg = theme.gray2,
    fg = "NONE",
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = theme.teal,
  },
  ScrollbarHintHandle = {
    bg = theme.gray2,
    fg = theme.teal,
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = theme.green,
  },
  ScrollbarInfoHandle = {
    bg = theme.gray2,
    fg = theme.green,
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = theme.pink,
  },
  ScrollbarMiscHandle = {
    bg = theme.gray2,
    fg = theme.pink,
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = theme.orange,
  },
  ScrollbarSearchHandle = {
    bg = theme.gray2,
    fg = theme.orange,
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = theme.yellow,
  },
  ScrollbarWarnHandle = {
    bg = theme.gray2,
    fg = theme.yellow,
  },
  Search = {
    bg = theme.blue,
    fg = theme.white,
  },
  SignColumn = {
    bg = theme.black,
    fg = theme.gray3,
  },
  SignColumnSB = {
    bg = theme.black,
    fg = theme.gray3,
  },
  Sneak = {
    bg = theme.magenta,
    fg = theme.gray2,
  },
  SneakScope = {
    bg = theme.gray,
  },
  Special = {
    fg = theme.blue,
  },
  SpecialKey = {
    fg = theme.gray,
  },
  SpellBad = {
    sp = theme.red,
    undercurl = true,
  },
  SpellCap = {
    sp = theme.gold,
    undercurl = true,
  },
  SpellLocal = {
    sp = theme.cyan,
    undercurl = true,
  },
  SpellRare = {
    sp = theme.teal,
    undercurl = true,
  },
  Statement = {
    fg = theme.magenta,
  },
  StatusLine = {
    bg = theme.black,
    fg = theme.magenta,
  },
  StatusLineNC = {
    bg = theme.black,
    fg = theme.gray3,
  },
  String = {
    fg = theme.green,
  },
  Substitute = {
    bg = theme.red,
    fg = theme.black,
  },
  TabLine = {
    bg = theme.black,
    fg = theme.gray3,
  },
  TabLineFill = {
    bg = theme.black,
  },
  TabLineSel = {
    bg = theme.blue,
    fg = theme.black,
  },
  TargetWord = {
    fg = theme.cyan,
  },
  TelescopeBorder = {
    bg = theme.black,
    fg = theme.gold,
  },
  TelescopeNormal = {
    bg = theme.black,
    fg = theme.white,
  },
  TelescopePromptBorder = {
    bg = theme.black,
    fg = theme.orange,
  },
  TelescopePromptTitle = {
    bg = theme.black,
    fg = theme.orange,
  },
  TelescopeResultsComment = {
    fg = theme.gray,
  },
  Title = {
    bold = true,
    fg = theme.blue,
  },
  Todo = {
    bg = theme.gold,
    fg = theme.black,
  },
  TreesitterContext = {
    bg = theme.gray,
  },
  TroubleCount = {
    bg = theme.gray3,
    fg = theme.magenta,
  },
  TroubleNormal = {
    bg = theme.black,
    fg = theme.white,
  },
  TroubleText = {
    fg = theme.magenta,
  },
  Type = {
    fg = theme.blue,
  },
  Underlined = {
    underline = true,
  },
  VertSplit = {
    fg = theme.black,
  },
  VimwikiHR = {
    bg = "NONE",
    fg = theme.gold,
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = theme.blue,
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = theme.gold,
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = theme.green,
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = theme.teal,
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = theme.magenta,
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = theme.pink,
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = theme.gold,
  },
  VimwikiLink = {
    bg = "NONE",
    fg = theme.blue,
  },
  VimwikiList = {
    bg = "NONE",
    fg = theme.orange,
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = theme.blue,
  },
  VimwikiTag = {
    bg = "NONE",
    fg = theme.green,
  },
  Visual = {
    bg = theme.gray,
  },
  VisualNOS = {
    bg = theme.gray,
  },
  WarningMsg = {
    fg = theme.yellow,
  },
  WhichKey = {
    fg = theme.cyan,
  },
  WhichKeyDesc = {
    fg = theme.magenta,
  },
  WhichKeyGroup = {
    fg = theme.blue,
  },
  WhichKeyNormal = {
    bg = theme.black,
  },
  WhichKeySeparator = {
    fg = theme.gray,
  },
  WhichKeySeperator = {
    fg = theme.gray,
  },
  WhichKeyValue = {
    fg = theme.gray2,
  },
  Whitespace = {
    fg = theme.gray3,
  },
  WildMenu = {
    bg = theme.gray,
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = theme.black,
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = theme.gray4,
    fg = theme.magenta,
  },
  debugPC = {
    bg = theme.black,
  },
  diffAdded = {
    fg = theme.green,
  },
  diffChanged = {
    fg = theme.blue,
  },
  diffFile = {
    fg = theme.blue,
  },
  diffIndexLine = {
    fg = theme.magenta,
  },
  diffLine = {
    fg = theme.gray,
  },
  diffNewFile = {
    fg = theme.orange,
  },
  diffOldFile = {
    fg = theme.gold,
  },
  diffRemoved = {
    fg = theme.red,
  },
  dosIniLabel = "@property",
  healthError = {
    fg = theme.red,
  },
  healthSuccess = {
    fg = theme.teal,
  },
  healthWarning = {
    fg = theme.yellow,
  },
  helpCommand = {
    bg = theme.black,
    fg = theme.blue,
  },
  helpExample = {
    fg = theme.gray,
  },
  htmlH1 = {
    bold = true,
    fg = theme.magenta,
  },
  htmlH2 = {
    bold = true,
    fg = theme.blue,
  },
  illuminatedCurWord = {
    bg = theme.gray3,
  },
  illuminatedWord = {
    bg = theme.gray3,
  },
  lCursor = {
    bg = theme.white,
    fg = theme.black,
  },
  qfFileName = {
    fg = theme.blue,
  },
  qfLineNr = {
    fg = theme.gray2,
  },
}

-- Return module
return M
