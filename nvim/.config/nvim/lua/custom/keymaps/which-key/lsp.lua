local wk = require("which-key")
local telescope = require("telescope.builtin")
wk.add({
	{
		"gD",
		function()
			vim.lsp.buf.declaration()
		end,
		desc = "[G]oto [d]eclaration",
	},
	{
		"gI",
		function()
			telescope.lsp_implementations()
		end,
		desc = "[G]oto [I]mplementation",
	},
	{
		"K",
		function()
			vim.lsp.buf.hover({
				border = "rounded",
			})
		end,
		desc = "[G]oto [I]mplementation",
	},
})
