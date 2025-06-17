vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { silent = true, desc = "Move to left pane" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { silent = true, desc = "Move to right pane" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { silent = true, desc = "Move to down pane" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { silent = true, desc = "Move to up pane" })

vim.keymap.set("n", "<A-k>", ":resize +2<CR>", { silent = true, desc = "Resize left pane", noremap = true })
vim.keymap.set("n", "<A-j>", ":resize -2<CR>", { silent = true, desc = "Resize right pane", noremap = true })
vim.keymap.set("n", "<A-h>", ":vertical resize -2<CR>", { silent = true, desc = "Resize down pane", noremap = true })
vim.keymap.set("n", "<A-l>", ":vertical resize +2<CR>", { silent = true, desc = "Resize up pane", noremap = true })
