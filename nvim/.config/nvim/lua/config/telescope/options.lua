local telescope = require("telescope")
telescope.setup({
	defaults = {
		previewer = false,
		layout_strategy = "vertical",
		prompt_prefix = "  >  ",
		file_ignore_patterns = {
			".gradle/",
			"node_modules/",
			".git/",
		},
		layout_config = {},
	},
	extensions = require("config.telescope.extensions"),
	extensions.load(telescope),
})
require("custom.keymaps.which-key.telescope")
