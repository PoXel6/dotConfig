local path = "pox.custom.keymaps."

require(path .. "telescope")
require(path .. "harpoon")

vim.keymap.set("n", "-", "<cmd>Ex<CR>")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set('n', "<leader>j", "<CMD>!./gradlew build<CR>", {silent = true})

vim.keymap.set({ "n", "v" }, "gro", function()
  vim.lsp.buf.format()
end, { desc = "Format the currect buffer", silent = true })

vim.keymap.set("n", "K", function()
    vim.lsp.buf.hover({ max_width = 60, max_height = 10 })
end, { desc = "Hover information", silent = true })
