local M = {}

M.setup = function()
	local wk = require("which-key")
	local builtin = require("telescope.builtin")

	wk.register({
		["<leader>"] = {
			sg = { builtin.git_files, "[S]earch [G]it" },
			["<leader>"] = { builtin.buffers, "[ ] Find existing buffers" },
			sd = { builtin.diagnostics, "[S]earch [D]iagnostics" },
			sk = { builtin.keymaps, "[S]earch [K]eymaps" },
			sf = { builtin.find_files, "[S]earch [F]iles" },
			st = { ":Telescope themes<CR>", "[S]earch [T]hemes" },
			sa = {
				function()
					builtin.find_files({ follow = true, no_ignore = true, hidden = true })
				end,
				"[S]earch [A]ll Files",
			},
			sn = {
				function()
					builtin.find_files({ cwd = vim.fn.stdpath("config") })
				end,
				"[S]earch [N]eovim files",
			},

			so = {
				function()
					builtin.live_grep({ grep_open_files = true, prompt_title = "Live Grep in Open Files" })
				end,
				"[S]earch [O]pen Files",
			},
		},
		-- Non-leader key bindings
		["<C-p>"] = {

			function()
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end,
			"[/] Fuzzily search in current buffer",
		},
	})
end

return M
