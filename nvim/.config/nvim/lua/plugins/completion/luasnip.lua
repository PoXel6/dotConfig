return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install_jsregexp",
  event = "BufReadPre",
  dependencies = {
    { "rafamadriz/friendly-snippets" },
  },
  keys = require("custom.keymaps.luasnip"),
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load({})
  end,
}
