return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { "echasnovski/mini.icons", opts = {} },
  event = { "BufReadPre", "VeryLazy" },
  lazy = true,
  keys = require("custom.keymaps.oil"),
  config = function()
    require("config.ui.oil")
  end,
}
