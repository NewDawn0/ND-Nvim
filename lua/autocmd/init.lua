local autocmd = vim.api.nvim_create_autocmd
local autogroup = vim.api.nvim_create_augroup
local cmd = vim.cmd
local fn = vim.fn
-- dont list quickfix buffers
autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.opt_local.buflisted = false
  end
})
-- Wrap--
autocmd("BufEnter", {
  pattern = {'*.md', '*.txt', '*.tex'},
  command = "set wrap"
})
autocmd("BufLeave", {
  pattern = {'*.md', '*.txt', '*.tex'},
  command = "set nowrap"
})
-- Markdown preview
autocmd("BufEnter", {
  pattern = '*.md',
  command = "MarkdownPreviewToggle"
})
-- Highlight yanks --
autocmd("TextYankPost", {
  callback = function() vim.highlight.on_yank{timeout=500} end
})
-- Autostart RainbowParentheses
autocmd("BufEnter", {
  pattern = "*",
  command = "RainbowParentheses"
})
-- Return to last edit position when opening files --
autocmd("BufReadPost", {
  callback = function ()
    if fn.line("'\"") > 0 and fn.line("'\"") <= fn.line("$") then
      fn.setpos('.', fn.getpos("'\""))
      cmd('silent! foldopen')
   end
  end
})
-- Alpha nvim --
autogroup("alpha_tabline", { clear = true })
autocmd("FileType", {
  group = "alpha_tabline",
  pattern = "alpha",
  command = "set showtabline=0 laststatus=0 noruler"
})
autocmd("FileType", {
  group = "alpha_tabline",
  pattern = "alpha",
  callback = function()
    vim.api.nvim_create_autocmd("BufUnload", {
      group = "alpha_tabline",
      buffer = 0,
      command = "set showtabline=2 ruler laststatus=3"
    })
  end
})
