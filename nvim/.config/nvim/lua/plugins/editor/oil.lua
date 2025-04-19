return {
	"stevearc/oil.nvim",
	---@module 'oil'
	dependencies = { "echasnovski/mini.icons", opts = {} },
	-- event = { "BufReadPre", "VeryLazy" },
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
