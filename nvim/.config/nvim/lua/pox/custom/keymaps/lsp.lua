vim.keymap.set({ "n", "v" }, "gro", function()
  vim.lsp.buf.format()
end, { desc = "Format the currect buffer", silent = true })

vim.keymap.set("n", "K", function()
    vim.lsp.buf.hover({ border = "rounded", max_width = 60, max_height = 10 })
end, { desc = "Hover information", silent = true })
