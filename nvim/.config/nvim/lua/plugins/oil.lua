return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { "echasnovski/mini.icons", opts = {} },
  -- event = { "BufReadPre", "VeryLazy" },
  keys = {
    {
      "-",
      function()
        oil.open()
      end,
      desc = "Open parent directory",
    },
    {
      "<leader>e",
      function()
        oil.toggle_float()
      end,
      desc = "Open oil in floating mode",
    },
  },
  config = function()
    require("config.ui.oil")
  end,
}
