local path = "custom.keymaps."

require(path .. "visual")
require(path .. "split")
require(path .. "terminal")
require(path .. "telescope")
require(path .. "code")
require(path .. "lsp")

-- vim bindings
vim.keymap.set("n", "<leader>e", "<cmd>Ex<CR>")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>a", "ggVG", { noremap = true, silent = true })
-------------------------------------------

vim.keymap.set(
	"n",
	"<leader>x",
	"<cmd>!chmod +x %<CR>",
	{ silent = true, desc = "Make this File Excutable AKA: chmod+x $thisFile" }
)
-------------------------------------------
