return {
	"nvim-lualine/lualine.nvim",
	-- dependencies = { "nvim-tree/nvim-web-devicons" },
	dependencies = { "echasnovski/mini.icons", opts = {} },
	config = function()
		require("config.ui.lualine")
	end,
}
