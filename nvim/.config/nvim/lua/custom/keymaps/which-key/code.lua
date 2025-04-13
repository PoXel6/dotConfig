local wk = require("which-key")
wk.add({
	{
		"<leader>c",
		group = "Code",
		icon = "",
	},
	{
		"<leader>ca",
		function()
			vim.lsp.buf.code_action()
		end,
		desc = "[C]ode [A]ction",
	},
	{
		"<leader>cf",
		function()
			vim.lsp.buf.format()
		end,
		desc = "[C]ode [F]ormat",
	},
	{
		"<leader>rn",
		function()
			vim.lsp.buf.rename()
		end,
		desc = "[R]e[N]ame",
	},
})
