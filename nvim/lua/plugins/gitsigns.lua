-- Utility
local util = require "util"
local theme = require("colours.theme").default

-- Setup gitsigns
require("gitsigns").setup {
  signs = {
    add = { text = "▎" },
    change = { text = "▎" },
    delete = { text = "" },
    topdelete = { text = "" },
    changedelete = { text = "▎" },
    untracked = { text = "┆" },
  },
  signcolumn = true,
  numhl = false,
  linehl = false,
  word_diff = false,
  watch_gitdir = { follow_files = true },
  auto_attach = true,
  attach_to_untracked = false,
  current_line_blame = false,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol",
    delay = 1000,
    ignore_whitespace = false,
    virt_text_priority = 100,
  },
  current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil,
  max_file_length = 40000,
  preview_config = {
    border = "single",
    style = "minimal",
    relative = "cursor",
    row = 0,
    col = 1,
  },
  on_attach = function(bufnr)
    local gitsigns = require "gitsigns"
    local function map(mode, l, r, opts)
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts or {})
    end
    map(
      "v",
      "<leader>gss",
      function() gitsigns.stage_hunk { vim.fn.line ".", vim.fn.line "v" } end,
      { desc = "Stage hunk" }
    )
    map(
      "v",
      "<leader>gsu",
      function() gitsigns.undo_stage_hunk { vim.fn.line ".", vim.fn.line "v" } end,
      { desc = "Undo stage hunk" }
    )
    map(
      "v",
      "<leader>gsr",
      function() gitsigns.reset_hunk { vim.fn.line ".", vim.fn.line "v" } end,
      { desc = "Reset hunk" }
    )
    map("n", "<leader>gd", gitsigns.diffthis, { desc = "Git diff this" })
  end,
}

util.sethl("GitSignsAdd", { fg = theme.green })
util.sethl("GitSignsChange", { fg = theme.blue })
util.sethl("GitSignsDelete", { fg = theme.red })
