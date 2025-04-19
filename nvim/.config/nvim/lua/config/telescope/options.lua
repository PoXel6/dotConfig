local telescope = require("telescope")
telescope.setup({
<<<<<<< HEAD
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
=======
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
  fzf = {
    fuzzy = true,                 -- Enable fuzzy search
    override_generic_sorter = true, -- Override default sorter
    override_file_sorter = true,  -- Override file sorter
    case_mode = "smart_case",     -- Case-insensitive search
  },

  ["ui-select"] = {
    require("telescope.themes").get_ivy({}),
  },

  themes = {
    ignore = { "default", "desert", "elflord", "habamax", "blue" },
    light_themes = {
      ignore = true,
      keywords = { "light", "day", "white", "onelight" },
    },
    dark_themes = {
      ignore = false,
      keywords = { "andromeda", "vscode", "dark", "night", "black", "onedark", "onedark_vivid" },
    },
    persist = {
      enabled = true,
    },
  },

  import = {},

  telescope.load_extension("fzf"),
  telescope.load_extension("ui-select"),
  telescope.load_extension("themes"),
  telescope.load_extension("macros"),
  telescope.load_extension("import"),
>>>>>>> 5e05cb0 (added new plugins to nvim)
})
require("custom.keymaps.which-key.telescope")
