return {
	lazy = true,
	event = { "BufWinEnter", "VeryLazy" },
	"nvimtools/none-ls.nvim",
	config = function()
		require("config.none-ls")
	end,
}
