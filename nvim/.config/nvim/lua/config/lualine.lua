require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "auto",
    transparency = true,
    -- section_separators = { left = "", right = "" },
    -- section_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    -- component_separators = { left = '', right = '' }
    -- component_separators = { left = '', right = '' }
    -- component_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff" },
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_y = { "lsp_status" },
    lualine_z = { "filetype", "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
})
