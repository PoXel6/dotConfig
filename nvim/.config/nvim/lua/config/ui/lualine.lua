require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "onedark",
		-- section_separators = { left = "", right = "" },
		-- section_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		-- component_separators = { left = '', right = '' }
		-- component_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename", require("NeoComposer.ui").status_recording() },
		lualine_x = { "lsp_status", "filetype" },
		lualine_y = { "progress" },
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
