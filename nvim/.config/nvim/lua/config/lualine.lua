require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "onedark_vivid",
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
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "filetype" },
		lualine_y = { "lsp_status" },
		lualine_z = { "location" },
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
