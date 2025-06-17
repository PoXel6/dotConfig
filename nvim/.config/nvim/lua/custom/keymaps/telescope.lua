local builtin = require("telescope.builtin")
local themes = require("telescope.themes")

vim.keymap.set("n", "<leader>sg", builtin.git_files)
vim.keymap.set("n", "<leader>sk", builtin.keymaps)
vim.keymap.set("n", "<leader>st", ":Telescope themes<CR>")
vim.keymap.set("n", "<leader>sl", builtin.live_grep)
vim.keymap.set("n", "<leader>sr", builtin.registers)
vim.keymap.set("n", "<leader>sm", builtin.marks)
vim.keymap.set("n", "<leader>si", ":Telescope import<CR>")
vim.keymap.set("n", "<leader>sb", builtin.buffers)

vim.keymap.set("n", "<leader>sf", function()
	builtin.find_files(themes.get_dropdown({ previewer = false }), {
		hidden = true,
	})
end)

vim.keymap.set("n", "<leader>sa", function()
	builtin.find_files(themes.get_ivy({ previewer = false }), {
		follow = true,
		no_ignore = true,
		hidden = true,
	})
end)

vim.keymap.set(
	"n",
	"<leader>sd",
	"<CMD>lua require('telescope.builtin').diagnostics(require('telescope.themes').get_ivy({previewer = false, layout_config = {height = 0.3}}))<CR>"
)

-- builtin.diagnostics(themes.get_ivy({ previewer = false, layout_config = { height = 0.3 } })), ),
vim.keymap.set("n", "<leader>sh", function()
	builtin.help_tags(themes.get_ivy({ previewer = false }), {
		hidden = true,
	})
end)

vim.keymap.set("n", "<leader>sn", function()
	builtin.find_files({ cwd = vim.fn.stdpath("config") })
end)

vim.keymap.set("n", "<leader>ss", function()
	builtin.lsp_document_symbols(themes.get_dropdown({
		layout_strategy = "horizontal",
		sorting_strategy = "descending",
		previewer = true,
	}))
end)

vim.keymap.set("n", "<leader>sj", function()
	builtin.jumplist()
end)
