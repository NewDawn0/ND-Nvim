local flash = require "flash"
flash.setup()
vim.keymap.set("n", "sf", function() flash.jump() end, {desc = "Flash jump"})
vim.keymap.set("n", "sF", function() flash.treesitter() end,
               {desc = "Flash jump with treesitter"})
vim.keymap.set("n", "sR", function() flash.treesitter_search() end,
               {desc = "Flash jump with treesitter search"})
