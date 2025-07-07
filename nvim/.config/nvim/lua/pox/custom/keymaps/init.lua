local path = "pox.custom.keymaps."

require(path .. "telescope")
require(path .. "lsp")
require(path .. "harpoon")

vim.keymap.set("n", "-", "<cmd>Ex<CR>")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
