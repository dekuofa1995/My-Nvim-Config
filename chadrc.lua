-- Just an example, supposed to be placed in /lua/custom/

local M = {}
M.mappings = require "custom.mappings"
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "ayu-dark",
   theme_toggle = { "onedark", "catppuccin", "ayu-dark" },
   transparency = true,
}

M.plugins = {
  user = require "custom.plugins",
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.configs.lsp_config",
    },
  },
}

return M
