--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Utility
local lsps = require "util.lsps"
local set = vim.keymap.set
local zero = require "lsp-zero"

-- Set lsp keybinds
zero.on_attach(function(_, bufnr)
  set("n", "<leader>dh", vim.lsp.buf.hover, { desc = "Diagnostics hover", buffer = bufnr })
  set("n", "<leader>dd", vim.lsp.buf.definition, { desc = "Diagnostics definition", buffer = bufnr })
  set("n", "<leader>dD", vim.lsp.buf.declaration, { desc = "Diagnostics declaration", buffer = bufnr })
  set("n", "<leader>di", vim.lsp.buf.implementation, { desc = "Diagnostics implementation", buffer = bufnr })
  set("n", "<leader>df", vim.lsp.buf.references, { desc = "Diagnostics references", buffer = bufnr })
  set("n", "<leader>ds", vim.lsp.buf.signature_help, { desc = "Diagnostics signature help", buffer = bufnr })
  set("n", "<leader>dw", vim.diagnostic.open_float, { desc = "Diagnostics open float", buffer = bufnr })
  set("n", "<leader>dgn", vim.diagnostic.goto_next, { desc = "Diagnostics goto next", buffer = bufnr })
  set("n", "<leader>dgp", vim.diagnostic.goto_prev, { desc = "Diagnostics goto previous", buffer = bufnr })
  set("n", "<leader>df", ":Telescope diagnostics<CR>", { desc = "Telescope diagnostics", buffer = bufnr })
  set("n", "<leader>dr", vim.lsp.buf.rename, { desc = "Lsp rename symbol", buffer = bufnr })
  set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action", buffer = bufnr })
end)

-- Setup signcolumn icons
vim.diagnostic.config {
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "✘",
      [vim.diagnostic.severity.WARN] = "▲",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "»",
    },
  },
}

-- Setup lsps
lsps.setup_handlers {
  ["asm_lsp"] = function()
    lsps.lspconfig.asm_lsp.setup {
      filetypes = { "asm", "nasm", "vmasm" },
    }
  end,
  ["biome"] = function()
    lsps.lspconfig.biome.setup {
      root_dir = function() return vim.fn.getcwd() end,
    }
  end,
  ["bufls"] = function()
    lsps.lspconfig.bufls.setup { root_dir = function() return vim.fn.getcwd() end }
  end,
  ["clangd"] = function()
    lsps.lspconfig.clangd.setup {
      filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
    }
  end,
  ["fortls"] = function()
    lsps.lspconfig.fortls.setup {
      root_dir = function() return vim.fn.getcwd() end,
    }
  end,
  ["gleam"] = function()
    lsps.lspconfig.gleam.setup {
      root_dir = function() return vim.fn.getcwd() end,
    }
  end,
  ["ltex"] = function()
    lsps.lspconfig.ltex.setup {
      settings = {
        ltex = { language = "en-GB" },
      },
    }
  end,
  ["lua_ls"] = function()
    lsps.lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
        },
      },
      on_init = function(client)
        -- FIXME: Fix Workspace folders callback error
        -- local path = client.workspace_folders[1].name
        -- if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then return end
        client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
          diagnostics = { globals = { "vim" } },
          runtime = { version = "LuaJIT" },
          telemetry = { enable = false },
          workspace = {
            checkThirdParty = false,
            library = { vim.env.VIMRUNTIME },
          },
        })
      end,
    }
  end,
  ["svelte"] = function()
    lsps.lspconfig.svelte.setup { root_dir = function() return vim.fn.getcwd() end }
  end,
}
