--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Setup treesitter highlighting
require("nvim-treesitter.configs").setup {
  highlight = { enable = true },
  indent = { enable = true },
  textopjects = {
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]f"] = { query = "@call.outer", desc = "Next function call start" },
        ["]m"] = { query = "@function.outer", desc = "Next method/function def start" },
        ["]c"] = { query = "@class.outer", desc = "Next class start" },
        ["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
        ["]l"] = { query = "@loop.outer", desc = "Next loop start" },

        -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
        -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
        ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
        ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
      },
      goto_next_end = {
        ["]F"] = { query = "@call.outer", desc = "Next function call end" },
        ["]M"] = { query = "@function.outer", desc = "Next method/function def end" },
        ["]C"] = { query = "@class.outer", desc = "Next class end" },
        ["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
        ["]L"] = { query = "@loop.outer", desc = "Next loop end" },
      },
      goto_previous_start = {
        ["[f"] = { query = "@call.outer", desc = "Prev function call start" },
        ["[m"] = { query = "@function.outer", desc = "Prev method/function def start" },
        ["[c"] = { query = "@class.outer", desc = "Prev class start" },
        ["[i"] = { query = "@conditional.outer", desc = "Prev conditional start" },
        ["[l"] = { query = "@loop.outer", desc = "Prev loop start" },
      },
      goto_previous_end = {
        ["[F"] = { query = "@call.outer", desc = "Prev function call end" },
        ["[M"] = { query = "@function.outer", desc = "Prev method/function def end" },
        ["[C"] = { query = "@class.outer", desc = "Prev class end" },
        ["[I"] = { query = "@conditional.outer", desc = "Prev conditional end" },
        ["[L"] = { query = "@loop.outer", desc = "Prev loop end" },
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["<leader>na"] = "@parameter.outer",
        ["<leader>ni"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>pa"] = "@parameter.outer",
        ["<leader>pi"] = "@parameter.inner",
      },
    },
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        -- Functions
        ["fa"] = { query = "@function.outer", desc = "Select outer function part" },
        ["fi"] = { query = "@function.inner", desc = "Select inner function part" },
        -- Classes
        ["ca"] = { query = "@class.outer", desc = "Select outer part of class region" },
        ["ci"] = { query = "@class.inner", desc = "Select inner part of a class region" },
        -- Scopes
        ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
        -- Asignements
        ["a="] = { query = "@assignment.outer", desc = "Select outer assignment" },
        ["i="] = { query = "@assignment.inner", desc = "Select inner assignment" },
        ["l="] = { query = "@assignment.lhs", desc = "Select left assignment" },
        ["r="] = { query = "@assignment.rhs", desc = "Select right assignment" },
        -- Parameters
        ["pa"] = { query = "@parameter.outer", desc = "Select outer parameter" },
        ["pi"] = { query = "@parameter.inner", desc = "Select inner parameter" },
        -- Calls
        ["cca"] = { query = "@call.outer", desc = "Select outer call" },
        ["cci"] = { query = "@call.inner", desc = "Select inner call" },
        -- Loops
        ["la"] = { query = "@loop.outer", desc = "Select outer call" },
        ["li"] = { query = "@loop.inner", desc = "Select inner call" },
      },
      selection_modes = {
        ["@parameter.outer"] = "v", -- charwise
        ["@function.outer"] = "V", -- linewise
        ["@class.outer"] = "<c-v>", -- blockwise
      },
    },
  },
}
