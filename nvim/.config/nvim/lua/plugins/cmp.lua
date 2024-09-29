return {
	{
		"L3MON4D3/LuaSnip",
		event = { "BufRead", "BufNewFile" },
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
		config = function()
			require("config.luasnip")
		end,
	},
	{
		"hrsh7th/cmp-nvim-lsp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
		},
		config = function()
			require("config.cmp")
		end,
	},
}
