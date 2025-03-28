return { -- oil.nvim
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { "echasnovski/mini.icons", opts = {} },
  keys = require("config.ui.oil.remap"),
  event = { "BufReadPre", "VeryLazy" },
  lazy = true,
  config = function()
    require("config.ui.oil.oil")
  end,
}
