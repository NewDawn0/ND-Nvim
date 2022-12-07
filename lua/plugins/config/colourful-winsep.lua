require('colorful-winsep').setup({
    direction = {
        down = "j",
        left = "h",
        right = "l",
        up = "k"
    },
    highlight = {
        guibg = vim.api.nvim_get_hl_by_name("Normal", true)["background"],
        guifg = "#A359ED"
    },
    -- refresh interval
    interval = 100,
    no_exec_files = { "packer", "TelescopePrompt", "mason", "CompetiTest" },
    symbols = { "━", "┃", "┏", "┓", "┗", "┛" },
    win_opts = {
        relative = "editor",
        style = "minimal"
    }
})
