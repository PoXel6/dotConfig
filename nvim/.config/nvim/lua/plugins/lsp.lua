return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v4.x",
	},
	{
		"williamboman/mason.nvim",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		event = "FileType",

		config = function()
			require("config.lsp.mason")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			return require("config.lsp.lsp-config")
		end,
	},
}
