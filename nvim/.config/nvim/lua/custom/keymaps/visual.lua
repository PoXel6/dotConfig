vim.keymap.set("v", "<", "<gv", { silent = true, desc = "keep me in the Visual mode when indenting" })
vim.keymap.set("v", ">", ">gv", { silent = true, desc = "keep me in the Visual mode when indenting" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move the Line in Visual mode Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move the Line in Visual mode Up" })
