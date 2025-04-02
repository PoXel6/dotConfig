-- vim bindings
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- vim.keymap.set("n", "<C-s>", "<cmd>w<cr>", { silent = true, buffer = 5 })
vim.keymap.set("n", "<C-e>", "$")

-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

vim.keymap.set("v", "<", "<gv", { silent = true, desc = "keep me in the Visual mode when indenting" })
vim.keymap.set("v", ">", ">gv", { silent = true, desc = "keep me in the Visual mode when indenting" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move the Line in Visual mode Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move the Line in Visual mode Up" })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { silent = true, desc = "Move to left pane" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { silent = true, desc = "Move to right pane" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { silent = true, desc = "Move to down pane" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { silent = true, desc = "Move to up pane" })

vim.keymap.set("n", "<A-k>", ":resize -2<CR>", { silent = true, desc = "Resize left pane", noremap = true })
vim.keymap.set("n", "<A-j>", ":resize +2<CR>", { silent = true, desc = "Resize right pane", noremap = true })
vim.keymap.set("n", "<A-h>", ":vertical resize -2<CR>", { silent = true, desc = "Resize down pane", noremap = true })
vim.keymap.set("n", "<A-l>", ":vertical resize +2<CR>", { silent = true, desc = "Resize up pane", noremap = true })

vim.keymap.set("n", "<leader>a", "ggVG", { noremap = true, silent = true })
-------------------------------------------

vim.keymap.set(
	"n",
	"<leader>x",
	"<cmd>!chmod +x %<CR>",
	{ silent = true },
	{ desc = "Make this File Excutable AKA: chmod+x $thisFile" }
)
-------------------------------------------
