vim.keymap.set({ "n", "v" }, "<leader>ca", function()
	vim.lsp.buf.code_action()
end, { silent = true })

vim.keymap.set({ "n", "v" }, "<leader>cf", function()
	vim.lsp.buf.format()
end, { silent = true })

vim.keymap.set({ "n", "v" }, "<leader>rn", function()
	vim.lsp.buf.rename()
end, { silent = true })
