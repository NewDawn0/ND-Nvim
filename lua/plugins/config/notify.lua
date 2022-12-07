local notify = require("notify")
notify.setup {
    stages = "slide",
    timeout = 1500,
    render = "default"
}
vim.notify = notify
