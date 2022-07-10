-- local my_plugins = "custom.plugins.configs."

return {
  -- ["knubie/vim-kitty-navigator"] = { },
  -- cursour move speed
  ["karb94/neoscroll.nvim"] = {
    event = "BufRead",
    -- config = load_config("neoscroll"),
    config = function() require("custom.plugins.configs.neoscroll") end
  },
  -- motion, substitute all native commands (/, ?, gg, f, etc)
  ["ggandor/lightspeed.nvim"] = {
    event = "BufRead",
  },

  -- editor
  ["tpope/vim-surround"] = {
    event = "BufRead",
  },

  ["CRAG666/code_runner.nvim"] = {
    -- config = require(my_plugins .. "code_runner")
    config = function() require("custom.plugins.configs.code_runner") end,
    -- config = load_config("code_runner"),
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    -- after
    config = function() require("custom.plugins.configs.null-ls") end,
    -- config = load_config("null-ls"),
  },
}
