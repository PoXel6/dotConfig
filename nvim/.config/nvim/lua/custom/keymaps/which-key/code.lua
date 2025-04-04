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
		vim.lsp.buf.code_action(),
		desc = "[C]ode [F]ormat",
	},
})
