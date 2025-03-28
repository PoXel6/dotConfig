return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v4.x",
		lazy = true,
	},
	{
		"williamboman/mason.nvim",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		event = { "FileType", "VeryLazy" },
		lazy = true,

		config = function()
			require("config.lsp.mason")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = true,
		event = "VeryLazy",
		config = function()
			return require("config.lsp.lsp-config")
		end,
	},
}
