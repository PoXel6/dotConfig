vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover({
		border = "rounded",
	})
end, { desc = "Hover Informations", silent = true })
