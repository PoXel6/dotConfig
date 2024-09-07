return {
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require("config.cmp")
		end,
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_pending = " ",
						package_installed = " ",
						package_uninstalled = " ",
					},
				},
			})
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd" },
				PATH = "skip",
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			return require("config.lsp-config")
		end,
	},
}
