return {
  lazy = true,
  event = "BufEnter",
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("config.lualine")
  end,
}
