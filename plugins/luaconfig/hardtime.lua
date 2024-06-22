require("hardtime").setup()
vim.keymap.set({ "n", "v" }, "<leader>ht", ":Hardtime toggle<CR>", { desc = "Toggle hardtime" })
