return {
	"nvimtools/none-ls.nvim",
	event = "VeryLazy",
	config = function()
		require("config.null-ls")
	end,
}
