return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
      require("config.ui.theme")
      vim.cmd("colorscheme onedark_vivid")
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = {},
  },
}
