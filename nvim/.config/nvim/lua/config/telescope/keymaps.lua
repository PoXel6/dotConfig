local M = {}

M.setup = function()
	local wk = require("which-key")
	local builtin = require("telescope.builtin")

	wk.add({
		{
			"<C-p>",
			function()
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end,
			desc = "[/] Fuzzily search in current buffer",
		},

		{ "<leader><leader>", builtin.buffers, desc = "[ ] Find existing buffers" },
		{
			"<leader>sa",
			function()
				builtin.find_files({ follow = true, no_ignore = true, hidden = true })
			end,
			desc = "[S]earch [A]ll Files",
		},
		{ "<leader>sd", builtin.diagnostics, desc = "[S]earch [D]iagnostics" },
		{ "<leader>sf", builtin.find_files, desc = "[S]earch [F]iles" },
		{ "<leader>sg", builtin.git_files, desc = "[S]earch [G]it" },
		{ "<leader>sk", builtin.keymaps, desc = "[S]earch [K]eymaps" },
		{
			"<leader>sn",
			function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "[S]earch [N]eovim files",
		},
		{ "<leader>th", ":Telescope themes<CR>", desc = "[T]elescope [H] themes" },
	})
end

return M
