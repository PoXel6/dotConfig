local M = {

  fzf = {
    fuzzy = true,                   -- Enable fuzzy search
    override_generic_sorter = true, -- Override default sorter
    override_file_sorter = true,    -- Override file sorter
    case_mode = "smart_case",       -- Case-insensitive search
  }

  ["ui-select"] = {
    require("telescope.themes").get_ivy({})
  }

  themes = {
    ignore = { "default", "desert", "elflord", "habamax", "blue" },
    light_themes = {
      ignore = true,
      keywords = { "light", "day", "white", "onelight" },
    },
    dark_themes = {
      ignore = false,
      keywords = { "dark", "night", "black", "onedark", "onedark_vivid" },
    },
    persist = {
      enabled = true,
    },
  },

  import = {}
}
M.load = function(telescope)
  telescope.load_extension("fzf")
  telescope.load_extension("ui-select")
  telescope.load_extension("themes")
  telescope.load_extension("macros")
  telescope.load_extension("import")
end
return M
