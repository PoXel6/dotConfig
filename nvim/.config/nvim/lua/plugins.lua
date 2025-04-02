return {

  { -- noice.nvim
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      require("config.ui.noice"),
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      -- TODO: add notify.nvim
    },
  },
  { -- auto-tag
    "windwp/nvim-ts-autotag",
    event = { "BufReadPre", "InsertEnter" },
    ft = require("config.autotag.file_types"),
    config = function()
      require("config.autotag.options")
    end,
  },
  {
    "stevearc/dressing.nvim",
    -- opts = {
    --   require("config.ui.dressing"),
    -- },
  },
}
