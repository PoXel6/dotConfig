return { -- auto-tag
	"windwp/nvim-ts-autotag",
	event = { "BufReadPre", "InsertEnter" },
	ft = require("config.autotag.file_types"),
	config = function()
		require("config.autotag.options")
	end,
}
