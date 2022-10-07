local autocmd = vim.api.nvim_create_autocmd
local api = vim.api
local cmd = vim.cmd

-- dont list quickfix buffers
autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.opt_local.buflisted = false
  end,
})

-- Run MarkdownPreviewToggle when opening Markdown files
cmd("autocmd BufEnter *.md | MarkdownPreviewToggle")

-- Turn autosave on for certain filetypes
cmd("autocmd BufEnter *.md | ASToggle")

