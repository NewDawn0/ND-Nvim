-- Setup todo comment highlighting
require("todo-comments").setup {
  signs = true,
  keywords = {
    FIX = {
      icon = " ",
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
    },
    TODO = { icon = " " },
    HACK = { icon = " " },
    WARN = { icon = " ", alt = { "WARNING", "XXX" } },
    PERF = {
      icon = " ",
      alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" },
    },
    NOTE = { icon = " ", alt = { "INFO" } },
    TEST = {
      icon = "⏲ ",
      alt = { "TESTING", "PASSED", "FAILED" },
    },
  },
}
