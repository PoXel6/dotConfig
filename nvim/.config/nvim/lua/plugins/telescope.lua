return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-ui-select.nvim",
				config = function()
					require("telescope").setup({
						extensions = {
							["ui-select"] = { require("telescope.themes").get_dropdown({}) },
						},
					})
					require("telescope").load_extension("fzf")
					require("telescope").load_extension("ui-select")
				end,
			},
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
		},
	},
}
