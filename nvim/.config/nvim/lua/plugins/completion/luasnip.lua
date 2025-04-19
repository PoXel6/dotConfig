return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install_jsregexp",
<<<<<<< HEAD
  event = "BufReadPre",
  dependencies = {
    { "rafamadriz/friendly-snippets" },
  },
  keys = require("custom.keymaps.luasnip"),
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load({})
  end,
=======
  event = { "BufReadPre", "VeryLazy" },
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load({
      "~/.config/nvim/lua/custom/snippets/",
    })
  end,
  keys = require("custom.keymaps.luasnip"),
>>>>>>> 5e05cb0 (added new plugins to nvim)
}
