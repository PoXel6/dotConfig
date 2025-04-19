return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install_jsregexp",
  event = { "BufReadPre", "VeryLazy" },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load({
      "~/.config/nvim/lua/custom/snippets/",
    })
  end,
  keys = require("custom.keymaps.luasnip"),
}
