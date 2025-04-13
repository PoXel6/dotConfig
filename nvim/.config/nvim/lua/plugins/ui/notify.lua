return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	config = function()
		require("config.ui.notify")
	end,
}
