--  _   _ ____        _   _       _
-- | \ | |  _ \      | \ | |_   _(_)_ __ ___
-- |  \| | | | |_____|  \| \ \ / / | '_ ` _ \
-- | |\  | |_| |_____| |\  |\ V /| | | | | | |
-- |_| \_|____/      |_| \_| \_/ |_|_| |_| |_|
-- Copyright: 2024 NewDawn0
--
-- Author: NewDawn0 (https://github.com/NewDawn0)

-- Abbrev
local util = require "util.util"
local dap = require "dap"
local dapui = require "dapui"

-- Set icons
local icons = {
  Stopped = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
  Breakpoint = " ",
  BreakpointCondition = " ",
  BreakpointRejected = { " ", "DiagnosticError" },
  LogPoint = ".>",
}
for name, sign in pairs(icons) do
  sign = type(sign) == "table" and sign or { sign }
  vim.fn.sign_define(
    "Dap" .. name,
    { text = sign[1], texthl = sign[2] or "DiagnosticWarn", linehl = sign[3], numhl = sign[3] }
  )
end
vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })

-- Setup dap
dap.listeners.before.attach.dapui_config = function() dapui.open() end
dap.listeners.before.launch.dapui_config = function() dapui.open() end
dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
dap.listeners.before.event_exited.dapui_config = function() dapui.close() end

-- Setup dap extensions
require("dap-go").setup()
require("dap-python").setup "python"
require("nvim-dap-virtual-text").setup {}
require("telescope").load_extension "dap"

-- Keybinds
util.setkb { "<leader>dt", dap.toggle_breakpoint, "Dap toggle breakpoint", { "n" } }
util.setkb { "<leader>dc", dap.continue, "Dap toggle breakpoint", { "n" } }
util.setkb { "<leader>dsv", dap.step_over, "Dap toggle step over", { "n" } }
util.setkb { "<leader>dsi", dap.step_into, "Dap toggle step into", { "n" } }
util.setkb { "<leader>dso", dap.step_out, "Dap toggle step out", { "n" } }
util.setkb { "<leader>dr", dap.repl.open, "Dap open repl", { "n" } }
