local builtin = require("telescope.builtin")
local themes = require("telescope.themes")
local half = {
	layout_config = {
		height = 0.6,
	},
}

vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch [G]rep" })
vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch [B]uffers" })

vim.keymap.set("n", "<leader>sf", function()
	builtin.find_files(themes.get_dropdown(), {
		hidden = true,
	})
end, { desc = "[S]earch [F]iles" })

vim.keymap.set("n", "<leader>sa", function()
	builtin.find_files(themes.get_ivy(half), {
		follow = true,
		no_ignore = true,
		hidden = true,
	})
end, { desc = "[S]earch [All] Files (searches ignored and hidden files too)" })

vim.keymap.set("n", "<leader>sd", function()
	builtin.diagnostics(themes.get_ivy(half))
end, { desc = "[S]earch [D]iagnostics" })

vim.keymap.set("n", "<leader>sh", function()
	builtin.help_tags(themes.get_ivy(half), { hidden = true })
end, { desc = "[S]earch [H]elp Pages" })
