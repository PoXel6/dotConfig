-- vim bindings
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("", "<C-e>", "$")

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

vim.keymap.set("v", "<", "<gv", { desc = "keep me in the Visual mode when indenting" })
vim.keymap.set("v", ">", ">gv", { desc = "keep me in the Visual mode when indenting" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move the Line in Visual mode Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move the Line in Visual mode Up" })

vim.keymap.set("i", "<C-h>", "<Left>", { desc = "move left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "move right" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "move down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "move up" })

-- vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })
-------------------------------------------

vim.keymap.set(
	"n",
	"<leader>x",
	"<cmd>!chmod +x %<CR>",
	{ silent = true },
	{ desc = "Make this File Excutable AKA: chmod+x $thisFile" }
)
-------------------------------------------
-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { noremap = true, silent = true }, { desc = "[S]earch by [G]rep" })
-- vim.keymap.set("n", "<leader>sg", builtin.git_files, { noremap = true, silent = true }, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elps" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })

vim.keymap.set("n", "<leader>sa", function()
	builtin.find_files({ follow = true, hidden = true })
end, { desc = "[S]earch [A]ll Files" })

vim.keymap.set("n", "<leader>sn", function()
	builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[S]earch [N]eovim files" })

vim.keymap.set("n", "<C-p>", function()
	builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

vim.keymap.set("n", "<leader>so", function()
	builtin.live_grep({
		grep_open_files = true,
		prompt_title = "Live Grep in Open Files",
	})
end, { desc = "[S]earch [/] in Open Files" })

vim.keymap.set(
	"n",
	"<leader>th",
	":Telescope themes<CR>",
	{ noremap = true, silent = true, desc = "[S]earch [T]hemes" }
)
----------------------------------------
