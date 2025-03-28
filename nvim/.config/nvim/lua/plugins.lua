return {

	{ -- noice.nvim
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			require("config.ui.noice"),
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
		},
	},

	{ -- wakatime
		"wakatime/vim-wakatime",
		lazy = false,
	},

	{ -- auto-tag
		"windwp/nvim-ts-autotag",
		event = { "BufReadPre", "InsertEnter" },
		ft = require("config.autotag.file_types"),
		config = function()
			require("config.autotag.options")
		end,
	},
	-- tailwind-tools.lua
	{
		"luckasRanarison/tailwind-tools.nvim",
		name = "tailwind-tools",
		build = ":UpdateRemotePlugins",
		lazy = true,
		ft = {
			"html",
			"css",
			"vue",
			"js",
			"ts",
			"jsx",
			"tsx",
			"svelte",
		},
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-telescope/telescope.nvim", -- optional
			"neovim/nvim-lspconfig", -- optional
		},
		config = function()
			require("config.tailwind")
		end,
	},
}
