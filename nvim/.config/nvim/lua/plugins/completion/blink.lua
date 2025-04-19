return {
  "saghen/blink.cmp",
  dependencies = {
    "L3MON4D3/LuaSnip",
  },
  version = "1.*",
  event = "BufReadPre",

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = require("config.completion.blink"),
  opts_extend = { "sources.default" },
}
