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
		require("pox.config.none-ls")
	end,
}
