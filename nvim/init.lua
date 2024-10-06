--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Speed up startup
require "util.startup"

-- Import plugin loader
local loader = require "util.loader"

-- Import all configs
require "util"

-- locals
local telescope = {
  config = function() require "plugins.telescope" end,
  lazy = {
    keys = { "<leader>fb", "<leader>fd", "<leader>ff", "<leader>fgc", "<leader>fll", "<leader>fn", "<leader>fs" },
  },
  deps = {
    ["dressing.nvim"] = {},
    ["nvim-web-devicons"] = {},
    ["plenary.nvim"] = {},
    ["telescope-dap.nvim"] = {},
  },
}

-- Setup plugins
loader.setup {
  ["alpha-nvim"] = {
    config = function() require "plugins.alpha" end,
    lazy = false,
    deps = { ["telescope.nvim"] = telescope },
  },
  ["boole.nvim"] = {
    config = function() require "plugins.boole" end,
  },
  ["comment.nvim"] = {
    config = function() require "plugins.comment" end,
    lazy = { keys = { "gcb", "gcc" } },
  },
  ["conform.nvim"] = {
    config = function() require "plugins.conform" end,
    lazy = { event = { "BufWritePre" } },
  },
  ["flash.nvim"] = {
    config = function() require "plugins.flash" end,
    lazy = { event = { "BufEnter" } },
  },
  ["gitsigns.nvim"] = {
    config = function() require "plugins.gitsigns" end,
    lazy = { event = { "BufAdd" } },
  },
  ["indent-blankline.nvim"] = {
    config = function() require "plugins.indent" end,
    lazy = { event = { "BufAdd" } },
  },
  ["lsp-zero.nvim"] = {
    config = function() require "plugins.lsp-zero" end,
    lazy = { event = { "BufRead" } },
    deps = {
      ["cmp-nvim-lsp"] = {},
      ["nvim-lspconfig"] = {},
    },
  },
  ["lualine.nvim"] = {
    config = function() require "plugins.lualine" end,
    lazy = { event = { "UIEnter" } },
  },
  ["markdown-preview.nvim"] = {
    lazy = { ft = { "markdown" } },
  },
  ["nvim-autopairs"] = {
    config = function() require("nvim-autopairs").setup {} end,
    lazy = { event = { "InsertEnter" } },
  },
  ["nvim-cmp"] = {
    config = function() require "plugins.cmp" end,
    lazy = { event = { "InsertEnter" } },
    deps = {
      ["cmp-buffer"] = {},
      ["cmp-nvim-lsp"] = {},
      ["cmp-nvim-lua"] = {},
      ["cmp-path"] = {},
      ["cmp_luasnip"] = {},
      ["dressing.nvim"] = {},
      ["friendly-snippets"] = {},
      ["lspkind-nvim"] = {},
      ["luasnip"] = {},
      ["nvim-lspconfig"] = {},
      ["nvim-web-devicons"] = {},
      ["plenary.nvim"] = {},
      ["vimplugin-codeium-nvim"] = {},
    },
  },
  ["nvim-colorizer.lua"] = {
    config = function()
      require("colorizer").setup {
        user_default_options = { names = false },
      }
    end,
    lazy = { event = { "BufReadPost" } },
  },
  ["nvim-dap"] = {
    config = function() require "plugins.dap" end,
    lazy = { event = { "BufReadPre" } },
    deps = {
      ["nvim-dap-go"] = {},
      ["nvim-dap-python"] = {},
      ["nvim-dap-ui"] = {},
      ["nvim-dap-virtual-text"] = {},
      ["plenary.nvim"] = {},
      ["telescope.nvim"] = telescope,
      ["vimplugin-nvim-dap-repl-highlight"] = {},
    },
  },
  ["nvim-lint"] = {
    config = function() require "plugins.lint" end,
    lazy = { event = { "BufReadPre" } },
  },
  ["nvim-notify"] = {
    config = function() require "plugins.notify" end,
    lazy = { event = { "UIEnter" } },
  },
  ["nvim-treesitter"] = {
    config = function() require "plugins.treesitter" end,
    lazy = { event = { "BufRead" } },
  },
  ["oil.nvim"] = {
    config = function() require "plugins.oil" end,
    lazy = false,
  },
  ["telescope.nvim"] = telescope,
  ["todo-comments.nvim"] = {
    config = function() require "plugins.todo-comments" end,
    lazy = { event = { "BufRead" } },
  },
  ["tokyonight.nvim"] = {
    config = function() require "plugins.tokyonight" end,
    lazy = false,
  },
  ["trim.nvim"] = {
    config = function()
      require("trim").setup {
        patterns = {
          [[%s/\(\n\n\)\n\+/\1/]], -- replace multiple blank lines with a single line
        },
      }
    end,
    lazy = { event = { "BufWritePre" } },
  },
  ["vim-tmux-navigator"] = {
    config = function() require "plugins.tmux" end,
    lazy = false,
  },
  ["vimplugin-bufferline-nvim"] = {
    config = function() require "plugins.bufferline" end,
    lazy = { event = { "BufWinEnter" } },
    deps = {
      ["plenary.nvim"] = {},
      ["nvim-web-devicons"] = {},
    },
  },
  ["vimplugin-gen-nvim"] = {
    config = function() require "plugins.gen" end,
    lazy = { event = { "CmdlineEnter" } },
  },
  ["vimplugin-mini-surround"] = {
    config = function() require "plugins.surround" end,
    lazy = { event = { "ModeChanged" } },
  },
  ["vimplugin-colorful-winsep-nvim"] = {
    config = function() require "plugins.winsep" end,
    lazy = { event = { "UIEnter" } },
  },
  ["vimplugin-vim-mcfunction"] = {
    lazy = { ft = { "mcfunction" } },
  },
  ["vim-startuptime"] = {
    lazy = { event = { "CmdlineEnter" } },
  },
  ["wrapping.nvim"] = {
    config = function()
      require("wrapping").setup {
        notify_on_switch = false,
      }
    end,
    lazy = { ft = { "markdown", "text" } },
  },
}
