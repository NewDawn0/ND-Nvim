local cols = vim.g.stylix_colors
require("todo-comments").setup({
    signs = true,
    keywords = {
        FIX = {
            icon = " ",
            color = cols.base08,
            alt = {"FIXME", "BUG", "FIXIT", "ISSUE"}
        },
        TODO = {icon = " ", color = cols.base0B},
        HACK = {icon = " ", color = cols.base0A},
        WARN = {icon = " ", color = cols.base0A, alt = {"WARNING", "XXX"}},
        PERF = {
            icon = " ",
            color = cols.base0E,
            alt = {"OPTIM", "PERFORMANCE", "OPTIMIZE"}
        },
        NOTE = {icon = " ", color = cols.base09, alt = {"INFO"}},
        TEST = {
            icon = "⏲ ",
            color = cols.base0C,
            alt = {"TESTING", "PASSED", "FAILED"}
        }
    }
})
