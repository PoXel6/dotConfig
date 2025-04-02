return {
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
			document_color = {
				enabled = true, -- can be toggled by commands
				kind = "foreground", -- "inline" | "foreground" | "background"
				inline_symbol = "󰝤 ", -- only used in inline mode
				debounce = 200, -- in milliseconds, only applied in insert mode
			},
			conceal = {
				enabled = true, -- can be toggled by commands
				min_length = nil, -- only conceal classes exceeding the provided length
				symbol = "󱏿", -- only a single character is allowed
			},
			telescope = {
				utilities = {
					callback = function(name, class) end, -- callback used when selecting an utility class in telescope
				},
			},
		},
	},
}
