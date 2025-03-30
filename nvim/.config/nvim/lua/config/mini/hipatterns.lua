local hi = require("mini.hipatterns")
hi.setup({

	-- `#112233`
	-- No need to copy this inside `setup()`. Will be used automatically.
	-- Table with highlighters (see |MiniHipatterns.config| for more details).
	-- Nothing is defined by default. Add manually for visible effect.
	highlighters = {
		-- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
		fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
		hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
		todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
		note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

		-- Highlight hex color strings (`#rrggbb`) using that color
		hex_color = hi.gen_highlighter.hex_color(),
	},

	-- Delays (in ms) defining asynchronous highlighting process
	delay = {
		-- How much to wait for update after every text change
		text_change = 200,

		-- How much to wait for update after window scroll
		scroll = 50,
	},

	-- FIXME
	-- custom LazyVim option to enable the tailwind integration
	-- tailwind = {
	-- 	enabled = true,
	-- 	ft = {
	-- 		"astro",
	-- 		"css",
	-- 		"heex",
	-- 		"html",
	-- 		"html-eex",
	-- 		"javascript",
	-- 		"javascriptreact",
	-- 		"rust",
	-- 		"svelte",
	-- 		"typescript",
	-- 		"typescriptreact",
	-- 		"vue",
	-- 	},
	-- 	-- full: the whole css class will be highlighted
	-- 	-- compact: only the color will be highlighted
	-- 	style = "compact",
	-- },
})
