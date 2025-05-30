return {
	"nvim-lualine/lualine.nvim",
	-- event = "VeryLazy",
	dependencies = { "echasnovski/mini.icons", opts = {} },
	config = function()
		require("config.ui.lualine")
	end,
}
