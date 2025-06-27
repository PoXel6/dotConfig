local path = "custom.keymaps."

require(path .. "telescope")
require(path .. "lsp")
require(path .. "harpoon")

-- vim bindings
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move the Line in Visual mode Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move the Line in Visual mode Up" })

vim.keymap.set("n", "-", "<cmd>Ex<CR>")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-------------------------------------------

vim.keymap.set(
	"n",
	"<leader>x",
	"<cmd>!chmod +x %<CR>",
	{ silent = true, desc = "Make this File Excutable AKA: chmod+x $thisFile" }
)
-------------------------------------------
