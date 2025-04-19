return {
  {
    "<C-e>",
    function()
      require("luasnip").expand()
    end,
    silent = true,
    mode = { "i", "n" },
    desc = "[E]xpand",
  },
  {
    "<Tab>",
    function()
      require("luasnip").jump(1)
    end,
    silent = true,
    mode = { "i", "n" },
    desc = "[E]xpand",
  },
  {
    "<S-Tab>",
    function()
      require("luasnip").jump(-1)
    end,
    silent = true,
    mode = { "i", "n" },
    desc = "[E]xpand",
  },
}
