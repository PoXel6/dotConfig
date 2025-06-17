vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover({
		border = "rounded",
		width = 60,
		height = 10,
	})
end, { desc = "Hover Informations", silent = true })
