return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets", -- optional: provides snippets for the snippet source
		event = "BufReadPre",
	},
	version = "1.*",
	event = "BufReadPre",

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = require("config.completion.blink"),
	opts_extend = { "sources.default" },
}
