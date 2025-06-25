return {
	lazy = true,
	event = { "BufWinEnter", "VeryLazy" },
	"saghen/blink.cmp",
	dependencies = {
		"L3MON4D3/LuaSnip",
	},
	version = "1.*",

	opts = require("config.completion.blink"),
	opts_extend = { "sources.default" },
}
