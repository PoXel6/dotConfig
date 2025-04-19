return {
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000,
		event = "VeryLazy",
		config = function()
			require("config.ui.themes.onedarkpro")
			vim.cmd("colorscheme onedark_vivid")
		end,
	},
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		event = "VeryLazy",
		opts = {},
	},
	{
		"nobbmaestro/nvim-andromeda",
		priority = 1000,
		event = "VeryLazy",
		dependencies = {
			"tjdevries/colorbuddy.nvim",
			branch = "dev",
		},
		config = function()
			require("config.ui.themes.andromeda")
		end,
	},
	{
		"Mofiqul/vscode.nvim",
		event = "VeryLazy",
		opts = {
			transparent = true,
			italic_comments = true,
			underline_links = true,
			terminal_colors = true,
		},
	},
}
