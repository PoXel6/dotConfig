local max_width = 35
return {
	keymap = {
		preset = "super-tab",
		["<C-e>"] = {},
	},

	completion = {
		documentation = {
			auto_show = false,
			auto_show_delay_ms = 0,
			window = {
				max_width = max_width,
				border = "rounded",
			},
		},
		menu = {
			draw = {
				align_to = "label",
				columns = {
					{ "label", "label_description", gap = 3 },
					{ "kind_icon" },
					{ "kind" },
				},
				components = {
					label = {
						ellipsis = true,
						width = {
							fill = true,
							min = 30,
							max = max_width,
						},
					},
				},
			},
			max_height = 7,
		},
		ghost_text = { enabled = false },
	},

	snippets = {
		preset = "luasnip",
	},

	sources = {
		default = {
			"lazydev",
			"lsp",
			"path",
			"snippets",
			"buffer",
		},
		providers = {
			lazydev = {
				name = "LazyDev",
				module = "lazydev.integrations.blink",
				score_offset = 100,
			},
		},
	},

	fuzzy = {
		implementation = "prefer_rust_with_warning",
	},
}
