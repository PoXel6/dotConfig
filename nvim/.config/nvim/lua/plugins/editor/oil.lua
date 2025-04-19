return {
	"stevearc/oil.nvim",
	---@module 'oil'
	dependencies = { "echasnovski/mini.icons", opts = {} },
	lazy = true,
	config = function()
		require("config.ui.oil")
	end,
	keys = {
		{
			"-",
			function()
				require("oil").open()
			end,
			desc = "Open parent directory",
		},
		{
			"<leader>e",
			function()
				require("oil").toggle_float()
			end,
			desc = "Open oil in floating mode",
		},
	},
}
