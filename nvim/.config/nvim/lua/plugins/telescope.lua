return {
	{
		"nvim-telescope/telescope.nvim",
		event = "UIEnter",
		tag = "0.1.8",
		dependencies = {
			"piersolenski/telescope-import.nvim",
			"andrew-george/telescope-themes",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"echasnovski/mini.icons",
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
