return {
<<<<<<< HEAD
	"luckasRanarison/tailwind-tools.nvim",
	name = "tailwind-tools",
	build = ":UpdateRemotePlugins",
	ft = {
		"html",
		"css",
		"vue",
		"js",
		"ts",
		"jsx",
		"tsx",
		"svelte",
		"rust",
	},
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-telescope/telescope.nvim",
		"neovim/nvim-lspconfig",
	},
	opts = {
		---@type TailwindTools.Option
		{
			server = {
				override = true, -- setup the server from the plugin if true
				settings = {}, -- shortcut for `settings.tailwindCSS`
				on_attach = function(client, bufnr) end, -- callback triggered when the server attaches to a buffer
			},
			conceal = {
				enabled = true, -- can be toggled by commands
				min_length = nil, -- only conceal classes exceeding the provided length
				symbol = "󱏿", -- only a single character is allowed
			},
		},
	},
=======
  "luckasRanarison/tailwind-tools.nvim",
  name = "tailwind-tools",
  build = ":UpdateRemotePlugins",
  ft = require("custom.file_types.frontend"),
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {
    ---@type TailwindTools.Option
    {
      server = {
        override = true,                     -- setup the server from the plugin if true
        settings = {},                       -- shortcut for `settings.tailwindCSS`
        on_attach = function(client, bufnr) end, -- callback triggered when the server attaches to a buffer
      },
      conceal = {
        enabled = true, -- can be toggled by commands
        min_length = nil, -- only conceal classes exceeding the provided length
        symbol = "󱏿", -- only a single character is allowed
      },
    },
  },
>>>>>>> 5e05cb0 (added new plugins to nvim)
}
