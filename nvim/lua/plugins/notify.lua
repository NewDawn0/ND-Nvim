-- Setup notifications
local notify = require "notify"
vim.notify = notify
notify.setup {
  background_colour = "#000",
}
