require("mini.ai").config = {
	custom_textobjects = nil, -- use this to disable builtin textobjects. See |MiniAi.config|.

	mappings = { -- Module mappings. Use `''` (empty string) to disable one.
		around = "a",
		inside = "i",

		around_next = "an",
		inside_next = "in",
		around_last = "al",
		inside_last = "il",

		-- Move cursor to corresponding edge of `a` textobject
		goto_left = "g[",
		goto_right = "g]",
	},

	n_lines = 50, -- Number of lines within which textobject is searched

	search_method = "cover_or_next",
}
