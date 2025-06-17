return {
	"williamboman/mason.nvim",
	lazy = true,
	cmd = "Mason",
	build = ":MasonUpdate",
	dependencies = { "williamboman/mason-lspconfig.nvim" },
	-- config = function()
	-- require("config.lsp.mason")
	-- end,
  opts = {}
}
