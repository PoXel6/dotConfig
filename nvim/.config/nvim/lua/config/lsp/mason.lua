require("mason").setup({
	ui = {
		show_progress = true,
		border = "rounded",
		icons = {
			package_pending = " ",
			package_installed = " ",
			package_uninstalled = " ",
		},
	},
})
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" },
	PATH = "skip",
})
