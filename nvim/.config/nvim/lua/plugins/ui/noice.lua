return { -- noice.nvim
  "folke/noice.nvim",
  opts = require("config.ui.noice"),
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}
