return {
	{ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},

		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_pending = " ",
						package_installed = " ",
						package_uninstalled = " ",
					},
				},
			})
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
