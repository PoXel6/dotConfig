require("mini.diff").config = {
	-- Options for how hunks are visualized
	view = {
		-- Visualization style. Possible values are 'sign' and 'number'.
		-- Default: 'number' if line numbers are enabled, 'sign' otherwise.
		style = vim.go.number and "number" or "sign",

		-- Signs used for hunks with 'sign' view
		signs = { add = "▒", change = "▒", delete = "▒" },

		-- Priority of used visualization extmarks
		priority = 199,
	},

	-- Source(s) for how reference text is computed/updated/etc
	-- Uses content from Git index by default
	source = nil,

	-- Delays (in ms) defining asynchronous processes
	delay = {
		-- How much to wait before update following every text change
		text_change = 200,
	},

	-- Module mappings. Use `''` (empty string) to disable one.
	mappings = {
		-- Apply hunks inside a visual/operator region
		apply = "gh",

		-- Reset hunks inside a visual/operator region
		reset = "gH",

		-- Hunk range textobject to be used inside operator
		-- Works also in Visual mode if mapping differs from apply and reset
		textobject = "gh",

		-- Go to hunk range in corresponding direction
		goto_first = "[H",
		goto_prev = "[h",
		goto_next = "]h",
		goto_last = "]H",
	},

	-- Various options
	options = {
		algorithm = "histogram",
		indent_heuristic = true,
		linematch = 60,
		wrap_goto = false,
	},
}
