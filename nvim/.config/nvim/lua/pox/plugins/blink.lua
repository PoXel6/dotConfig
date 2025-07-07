return {
	lazy = true,
	event = "InsertEnter",
	"saghen/blink.cmp",
	dependencies = {
		"L3MON4D3/LuaSnip",
	},
	version = "1.*",

	opts = require("pox.config.blink"),
	opts_extend = { "sources.default" },
}
