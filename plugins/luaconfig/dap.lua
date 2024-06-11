local dap = require "dap"
local dapui = require "dapui"

-- Setup
dapui.setup()
require("nvim-dap-virtual-text").setup()
-- require("jdtls").start_or_attach {
--   cmd = { "jdtls" },
--   root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
-- }
-- Listeners
dap.listeners.before.attach.dapui_config = function() dapui.open() end
dap.listeners.before.launch.dapui_config = function() dapui.open() end
dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
dap.listeners.before.event_exited.dapui_config = function() dapui.close() end
-- Keymaps
vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Dap continue" })
vim.keymap.set("n", "<leader>dsi", dap.step_into, { desc = "Dap step into" })
vim.keymap.set("n", "<leader>dso", dap.step_over, { desc = "Dap step over" })

-- Lang specific
require("dap-python").setup "python"
-- require("jdtls.dap").setup_dap_main_class_configs()
require("dap-go").setup()

dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = { "-i", "dap" },
}
