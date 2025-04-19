<<<<<<< HEAD
return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VeryLazy",
		tag = "0.1.8",
		dependencies = {
			"andrew-george/telescope-themes",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
		},
		config = function()
			require("config.telescope.options")
		end,
	},
=======
local themes = require("telescope.themes")
local builtin = require("telescope.builtin")
return {
  {
    "nvim-telescope/telescope.nvim",
    event = "VeryLazy",
    tag = "0.1.8",
    dependencies = {
      "piersolenski/telescope-import.nvim",
      "andrew-george/telescope-themes",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
    },
    config = function()
      require("config.telescope.options")
    end,
  },
>>>>>>> 5e05cb0 (added new plugins to nvim)
}
