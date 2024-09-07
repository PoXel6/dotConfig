return {
	{
		"nvim-telescope/telescope.nvim",
		event = "BufReadPre",
		tag = "0.1.8",
		dependencies = {
			"andrew-george/telescope-themes",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
		},
		config = function()
			require("config.telescope")
		end,
	},
}
