return {
  "saghen/blink.cmp",
  dependencies = {
    "L3MON4D3/LuaSnip",
  },
  version = "1.*",
<<<<<<< HEAD
  event = "BufReadPre",
=======
  event = { "BufReadPre", "VeryLazy" },
>>>>>>> 5e05cb0 (added new plugins to nvim)

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = require("config.completion.blink"),
  opts_extend = { "sources.default" },
}
