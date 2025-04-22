return {
	style = "glyph",

	-- Customize per category. See `:h MiniIcons.config` for details.
	default = {},
	directory = {},
	extension = {},
	file = {
		[".eslintrc.js"] = { glyph = "󰱺", hl = "MiniIconsYellow" },
		[".node-version"] = { glyph = "", hl = "MiniIconsGreen" },
		[".prettierrc"] = { glyph = "", hl = "MiniIconsPurple" },
		[".yarnrc.yml"] = { glyph = "", hl = "MiniIconsBlue" },
		["eslint.config.js"] = { glyph = "󰱺", hl = "MiniIconsYellow" },
		["package.json"] = { glyph = "", hl = "MiniIconsGreen" },
		["tsconfig.json"] = { glyph = "", hl = "MiniIconsAzure" },
		["tsconfig.build.json"] = { glyph = "", hl = "MiniIconsAzure" },
		["yarn.lock"] = { glyph = "", hl = "MiniIconsBlue" },
	},
	filetype = {},
	lsp = {},
	os = {},

	-- Control which extensions will be considered during "file" resolution
	use_file_extension = function(ext, file)
		return true
	end,
}
