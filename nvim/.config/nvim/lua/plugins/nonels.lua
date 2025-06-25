return {
	lazy = true,
	ft = {
		"lua",
		"python",
		"bash",
		"sh",
	},
	"nvimtools/none-ls.nvim",
	config = function()
		require("config.none-ls")
	end,
}
