return {

	{
		"olimorris/onedarkpro.nvim",
		lazy = true,
		priority = 1000,
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
		priority = 1000,
	},

	{
		"ellisonleao/gruvbox.nvim",
		lazy = true,
		priority = 1000,
		config = true,
		opts = ...,
	},

	{
		"folke/tokyonight.nvim",
		lazy = true,
		priority = 1000,
		opts = {},
	},
}
