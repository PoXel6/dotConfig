local telescope = require("telescope")
telescope.setup({
	defaults = {
		previewer = false,
		-- layout_strategy = "center",
		-- sorting_strategy = "ascending",
		prompt_prefix = "  >  ",
		file_ignore_patterns = {
			".gradle/",
			"node_modules/",
			".git/",
			".idea/",
			".vscode/",
		},
		layout_config = {},
	},
	fzf = {
		fuzzy = true, -- Enable fuzzy search
		override_generic_sorter = true, -- Override default sorter
		override_file_sorter = true, -- Override file sorter
		case_mode = "smart_case", -- Case-insensitive search
	},

	import = {},

	telescope.load_extension("fzf"),
	telescope.load_extension("import"),
})
-- require("custom.keymaps.telescope")
