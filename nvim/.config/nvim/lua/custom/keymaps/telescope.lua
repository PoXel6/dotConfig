local builtin = require("telescope.builtin")
local themes = require("telescope.themes")
local wk = require("which-key")

wk.add({
	{
		"<leader>s",
		icon = "",
		group = "Search",
	},
	{
		"<leader>sf",
		builtin.find_files,
		desc = "[F]iles",
	},
	{
		"<leader>sa",
		function()
			builtin.find_files(themes.get_ivy({ previewer = false }), {
				follow = true,
				no_ignore = true,
				hidden = true,
			})
		end,
		desc = "[A]ll Files",
	},
	{
		"<leader>sb",
		builtin.buffers,
		desc = "[B]uffers",
	},
	{
		"<leader>sd",
		builtin.diagnostics,
		desc = "[D]iagnostics",
	},
	{
		"<leader>sg",
		builtin.git_files,
		desc = "[G]it",
	},
	{
		"<leader>sk",
		builtin.keymaps,
		desc = "[K]eymaps",
	},
	{
		"<leader>sh",
		builtin.help_tags,
		desc = "[H]elps",
	},
	{
		"<leader>st",
		":Telescope themes<CR>",
		desc = "[T]hemes",
	},
	{
		"<leader>sl",
		builtin.live_grep,
		desc = "[L]ive Grep",
	},
	{
		"<leader>sr",
		builtin.registers,
		desc = "[R]egisters",
	},
	{
		"<leader>sm",
		builtin.marks,
		desc = "[M]arks",
	},
	{
		"<leader>sn",
		function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end,
		desc = "[N]eovim config",
	},
})
