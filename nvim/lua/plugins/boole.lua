-- Setup boole
require("boole").setup {
  mappings = { increment = "<C-i>", decrement = "<C-d>" },
  allow_caps_additions = {
    { "enable", "disable" },
    { "enabled", "disabled" },
    { "true", "false" },
    { "on", "off" },
    { "yes", "no" },
  },
}
