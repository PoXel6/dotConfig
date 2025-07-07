return {
	"neovim/nvim-lspconfig",
	evnet = "BufWinEnter",
	dependencies = {
		"mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	opts = require("pox.config.lsp.options"),

	config = function(_, opts)
		for server, config in pairs(opts.servers) do
			local lspconfig = require("lspconfig")
			config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
			lspconfig[server].setup(config)
		end
	end,
}
