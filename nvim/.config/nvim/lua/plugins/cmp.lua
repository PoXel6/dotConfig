return {
	{
		"L3MON4D3/LuaSnip",
		event = "VeryLazy",
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
		dependencies = {
    "hrsh7th/nvim-cmp"
    },
    config = function()
      require("config.cmp")
    end
  }
}
