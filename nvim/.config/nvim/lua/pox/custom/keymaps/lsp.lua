vim.keymap.set("n", "K", function()
  vim.lsp.buf.hover({
    border = "rounded",
  })
end, { desc = "Hover Informations", silent = true })

vim.keymap.set({ "n", "v" }, "grf", function()
  vim.lsp.buf.format()
end, { desc = "Format the currect buffer", silent = true })
