vim.keymap.set({ "n", "v" }, "gro", function()
  vim.lsp.buf.format()
end, { desc = "Format the currect buffer", silent = true })
