return {
	"williamboman/mason.nvim",
	lazy = true,
	cmd = "Mason",
	build = ":MasonUpdate",
	config = function()
		require("config.lsp.mason")
	end,
}
