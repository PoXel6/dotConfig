return {
	lazy = true,
	event = "BufEnter",
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"echasnovski/mini.icons",
	},
	config = function()
		require("config.ui.lualine")
	end,
}
