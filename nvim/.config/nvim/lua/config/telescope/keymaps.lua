local M = {}

M.setup = function()
	local builtin = require("telescope.builtin")

	vim.keymap.set("n", "<leader>sg", builtin.git_files, { noremap = true, silent = true, desc = "[S]earch [G]it" })
	vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
	vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
	vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
	vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
	vim.keymap.set(
		"n",
		"<leader>th",
		":Telescope themes<CR>",
		{ noremap = true, silent = true, desc = "[T]elescope [H] themes" }
	)

	vim.keymap.set("n", "<leader>sa", function()
		builtin.find_files({ follow = true, no_ignore = true, hidden = true })
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
	end, { desc = "[S]earch [O]pen Files" })
end

return M
