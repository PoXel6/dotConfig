local path = "plugins.editor."
return {
  require(path .. "mini"),
  require(path .. "telescope"),
  require(path .. "which-key"),
  require(path .. "ts-autotag"),
}
