return {

  {
    "-",
    function()
      require("oil").open()
    end,
    {
      desc = "Open parent directory",
      silent = true,
    },
  },
  {
    "<leader>e",
    function()
      require("oil").toggle_float()
    end,
    {
      desc = "Open oil in floating mode",
      silent = true,
    },
  },
}
