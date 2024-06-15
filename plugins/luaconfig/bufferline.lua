local cols = vim.g.stylix_colors
require("bufferline").setup({
    options = {
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        separator_style = "thick",
        diagnostics_indicator = function(_, _, diag)
            local ret = (diag.error .. " " or "") .. (diag.warning or "")
            return vim.trim(ret)
        end,
        offsets = {
            {
                filetype = "neo-tree",
                text = "Neo-tree",
                highlight = "Directory",
                text_align = "left"
            },
            {
                filetype = "oil",
                text = "Oil",
                highlight = "Directory",
                text_align = "left"
            }
        }
    }
})

vim.keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>",
               {desc = "Goto next buffer"})
vim.keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<CR>",
               {desc = "Goto previous buffer"})
vim.keymap.set("n", "<leader>bdd", ":bdelete<CR>",
               {desc = "Close current buffer"})
vim.keymap.set("n", "<leader>bdo", ":BufferLineCloseOthers<CR>",
               {desc = "Close other buffers"})
vim.keymap.set("n", "<leader>bdn", ":BufferLineCloseRight<CR>",
               {desc = "Close right buffer"})
vim.keymap.set("n", "<leader>bdp", ":BufferLineCloseLeft<CR>",
               {desc = "Close left buffer"})
vim.keymap.set("n", "<leader>bmn", ":BufferLineMoveNext<CR>",
               {desc = "Move buffer to next"})
vim.keymap.set("n", "<leader>bmp", ":BufferLineMovePrev<CR>",
               {desc = "Move buffer to previous"})
vim.keymap.set("n", "<leader>bt", ":BufferLineTogglePin<CR>",
               {desc = "Toggle pin buffer"})
