path = "plugins.completion."
return {
  require(path .. "blink"),
  require(path .. "luasnip"),
  require(path .. "refactoring"),
}
