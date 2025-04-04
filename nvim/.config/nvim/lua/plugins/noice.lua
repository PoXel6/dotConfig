return { -- noice.nvim
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		require("config.ui.noice"),
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		-- TODO: add notify.nvim
	},
}
