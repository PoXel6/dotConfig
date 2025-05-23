local hi = require("mini.hipatterns")
hi.setup({
	tailwind = {
		enabled = true,
		ft = {
			"astro",
			"css",
			"heex",
			"html",
			"html-eex",
			"javascript",
			"javascriptreact",
			"rust",
			"svelte",
			"typescript",
			"typescriptreact",
			"vue",
		},
		style = "full",
	},
	highlighters = {
		hex_color = hi.gen_highlighter.hex_color({ priority = 2000 }),
		shorthand = {
			pattern = "()#%x%x%x()%f[^%x%w]",
			group = function(_, _, data)
				---@type string
				local match = data.full_match
				local r, g, b = match:sub(2, 2), match:sub(3, 3), match:sub(4, 4)
				local hex_color = "#" .. r .. r .. g .. g .. b .. b

				return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
			end,
			extmark_opts = { priority = 2000 },
		},
	},
})
