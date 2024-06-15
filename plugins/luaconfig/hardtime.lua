require("hardtime").setup()
vim.keymap.set("n", "<leader>ht", ":Hardtime toggle<CR>",
               {desc = "Toggle hardtime"})
