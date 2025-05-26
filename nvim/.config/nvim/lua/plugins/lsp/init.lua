local path = "plugins.lsp."
return {
	require(path .. "lsp"),
	require(path .. "mason"),
	require(path .. "lazydev"),
	require(path .. "nonels"),
}
