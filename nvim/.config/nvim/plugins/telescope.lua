return {
	'https://github.com/nvim-telescope/telescope.nvim',
	dependencies = {
		'https://github.com/nvim-lua/plenary.nvim',
		'https://github.com/nvim-telescope/telescope-ui-select.nvim',
		'https://github.com/nvim-telescope/telescope-fzy-native.nvim',
	},
	opts = {
		defaults = {
			preview = false,
			file_ignore_patterns = {
				"target/",
				"bin/",
				"node_modules/",
				"build/",
			},
		},
		pickers = {},
		extensions = {}
	},
	config = function()
		require("telescope").load_extension("ui-select")
		require("telescope").load_extension("fzy_native")
	end,
	keys = {
		{ "<leader>sf", "<CMD>Telescope find_files<CR>", },
		{ "<leader>sh", "<CMD>Telescope help_tags<CR>", },
		{ "<leader>sl", "<CMD>Telescope live_grep<CR>",  silent = true }
	}
}
