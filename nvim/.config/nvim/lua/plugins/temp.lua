return {
	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		ft = { "org" },
		opts = {
			org_agenda_files = "~/orgfiles/**/*",
			org_default_note_file = "~/orgfiles/refile.org",
		},
	},
	{
		"ecthelionvi/NeoComposer.nvim",
		dependencies = {
			"kkharji/sqlite.lua",
		},
		opts = {},
	},
	{
		"gbprod/stay-in-place.nvim",
		opts = {},
	},
	{
		"m4xshen/hardtime.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		opts = {},
	},
}
