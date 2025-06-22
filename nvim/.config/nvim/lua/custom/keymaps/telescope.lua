local builtin = require("telescope.builtin")
local themes = require("telescope.themes")

vim.keymap.set("n", "<leader>sg", builtin.git_files, { desc = "[S]earch [G]it" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eybinds" })
vim.keymap.set("n", "<leader>st", ":Telescope themes<CR>", { desc = "[S]earch [T]hemes" })
vim.keymap.set("n", "<leader>sl", builtin.live_grep, { desc = "[S]earch [L]ive Grep" })
vim.keymap.set("n", "<leader>sr", builtin.registers, { desc = "[S]earch [R]egisters" })
vim.keymap.set("n", "<leader>sm", builtin.marks, { desc = "[S]earch [M]arks" })
vim.keymap.set("n", "<leader>si", ":Telescope import<CR>", { desc = "[S]earch [I]mports" })
vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch [B]uffers" })

vim.keymap.set("n", "<leader>sf", function()
	builtin.find_files(themes.get_dropdown({ previewer = false }), {
		hidden = true,
	})
end, { desc = "[S]earch [F]iles" })

vim.keymap.set("n", "<leader>sa", function()
	builtin.find_files(themes.get_ivy({ previewer = false }), {
		follow = true,
		no_ignore = true,
		hidden = true,
	})
end, { desc = "[S]earch [All] Files (searches ignored and hidden files too)" })

vim.keymap.set(
	"n",
	"<leader>sd",
	"<CMD>lua require('telescope.builtin').diagnostics(require('telescope.themes').get_ivy({previewer = false, layout_config = {height = 0.3}}))<CR>",
	{ desc = "[S]earch [D]iagnostics" }
)

-- builtin.diagnostics(themes.get_ivy({ previewer = false, layout_config = { height = 0.3 } })), ),
vim.keymap.set("n", "<leader>sh", function()
	builtin.help_tags(themes.get_dropdown({ previewer = false }), {
		hidden = true,
	})
end, { desc = "[S]earch [H]elp Pages" })

vim.keymap.set("n", "<leader>sn", function()
	builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[S]earch [N]eovim Config Files" })

vim.keymap.set("n", "<leader>ss", function()
	builtin.lsp_document_symbols()
end, { desc = "[S]earch Document [S]ymbols" })

vim.keymap.set("n", "<leader>sj", function()
	builtin.jumplist({ previewer = false })
end, { desc = "[S]earch [J]umplist" })
