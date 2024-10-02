local telescope = require("telescope")
telescope.setup({
  defaults = {
    prompt_prefix = "  >  ",
    file_ignore_patterns = { "node_modules", ".git/" },
    horizontal = { width = 0.5, height = 0.5 },
    vertical = { width = 0.5 },
  },

  extensions = {
    --		fzf = {
    --			fuzzy = true, -- Enable fuzzy search
    --			override_generic_sorter = true, -- Override default sorter
    --			override_file_sorter = true, -- Override file sorter
    --			case_mode = "smart_case", -- Case-insensitive search
    --		},

    ["ui-select"] = { require("telescope.themes").get_dropdown({}) },

    themes = {
      layout_config = {
        vertical = { width = 0.5 },
        horizontal = {
          prompt_position = "top",
          width = 0.5,
          height = 0.5,
        },
      },

      ignore = { "default", "desert", "elflord", "habamax", "blue" },

      light_themes = {
        ignore = true,
        keywords = { "light", "day", "white" },
      },

      dark_themes = {
        ignore = false,
        keywords = { "dark", "night", "black" },
      },

      persist = {
        enabled = true,
      },
    },
  },
})
-- telescope.load_extension("fzf")
telescope.load_extension("ui-select")
telescope.load_extension("themes")
