return {
	'saghen/blink.cmp',
	dependencies = { 'https://github.com/L3MON4D3/LuaSnip' },
	build = 'cargo build --release',
	opts = {
		keymap = {
			preset = 'default',
			['<C-e>'] = { 'fallback' },
			['<C-k>'] = { 'fallback' },
			['<C-y>'] = { 'select_and_accept', 'fallback' },

		},
		completion = {
			documentation = { window = { scrollbar = false, max_width = 35, } },
			menu = {
				max_height = 9,
				scrollbar = false,
				draw = {
					align_to = "label",
					columns = { { "label", gap = 3 }, { "kind_icon" }, { "kind" } },
					components = {
						label = { ellipsis = true, width = { fill = false, min = 30, max = 35, } },
					},
				},
			},
		},
		sources = { default = { 'lsp', 'path', 'buffer' } }
	}
}
