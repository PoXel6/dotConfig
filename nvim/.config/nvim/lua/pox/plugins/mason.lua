return {
	"williamboman/mason.nvim",
	lazy = true,
	cmd = "Mason",
	build = ":MasonUpdate",
	config = function()
		require("pox.config.lsp.mason")
	end,
}
