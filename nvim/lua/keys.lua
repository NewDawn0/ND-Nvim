-- Keybinds
local keybinds = {
  -- General
  {
    "<leader>hh",
    action = ":nohlsearch<CR>",
    desc = "Disable search highlight",
    modes = { "n", "v" },
  },
  {
    "<",
    action = "<gv",
    desc = "Unindent selection",
    modes = { "v" },
  },
  {
    ">",
    action = ">gv",
    desc = "Indent selection",
    modes = { "v" },
  },
  {
    "<leader>ss",
    action = ":sort<CR>",
    desc = "Sort selection",
    modes = { "v" },
  },
  {
    "<leader>fc",
    action = ":foldclose<CR>",
    desc = "Close fold",
    modes = { "n", "v" },
  },
  {
    "<leader>fo",
    action = ":foldopen<CR>",
    desc = "Open fold",
    modes = { "n", "v" },
  },
  {
    "<leader>sh",
    action = ":split<CR>",
    desc = "New horizontal split",
    modes = { "n", "v" },
  },
  {
    "<leader>sv",
    action = ":vsplit<CR>",
    desc = "New vertical split",
    modes = { "n", "v" },
  },
}
-- Set keybinds
for _, k in ipairs(keybinds) do
  vim.keymap.set(k.modes, k[1], k.action, { desc = k.desc })
end
