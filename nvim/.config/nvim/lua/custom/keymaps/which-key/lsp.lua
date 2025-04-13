local wk = require("which-key")
local telescope = require("telescope.builtin")
wk.add({
	{
		"gd",
		function()
			vim.lsp.buf.declaration()
		end,
		desc = "[G]oto [d]eclaration",
	},
	{
		"gD",
		function()
			telescope.lsp_definitions()
		end,
		desc = "[G]oto [D]efinition",
	},
	{
		"gI",
		function()
			telescope.lsp_implementations()
		end,
		desc = "[G]oto [I]mplementation",
	},
	{
		"gr",
		function()
			telescope.lsp_references()
		end,
		desc = "[G]oto [r]efrences",
	},
})
