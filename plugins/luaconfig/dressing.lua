require("dressing").setup {
  input = {
    trim_prompt = true,
    title_pos = "center",
    start_in_insert = true,
    relative = "cursor",
    override = function(conf)
      conf.style = { border = "rounded" }
      return conf
    end,
  },
  select = {
    enabled = true,
    trim_prompt = true,
    backend = { "telescope", "nui", "builtin" },
    override = function(conf)
      conf.style = { border = "rounded" }
      return conf
    end,
  },
}
local cols = vim.g.stylix_colors
local function hi(what, fmt) vim.cmd(string.format("highlight %s %s", what, fmt)) end
hi("FloatBorder", "guifg=cols.base0E")
hi("NormalFloat", "guibg='NONE'")
