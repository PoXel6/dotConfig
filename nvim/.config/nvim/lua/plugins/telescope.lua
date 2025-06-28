return {
	{
		"nvim-telescope/telescope.nvim",
		event = { "UIEnter", "BufWinEnter" },
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
		},
		config = function()
			require("config.telescope.options")
		end,
	},
}
