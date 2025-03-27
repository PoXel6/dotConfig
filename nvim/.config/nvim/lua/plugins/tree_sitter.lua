return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufWinEnter", "VeryLazy" },
	build = ":TSUpdate",
	main = "nvim-treesitter.configs", -- Sets main module to use for opts
	opts = {
		vim.filetype.add({
			pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
		}),
		ensure_installed = { "lua", "luadoc", "bash", "c", "bash" },
		auto_install = true,
		highlight = {
			enable = true,
			use_languagetree = true,
		},
		indent = { enable = true },
	},
}
