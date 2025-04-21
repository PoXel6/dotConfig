return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    event = "VeryLazy",
    opts = {
      options = {
        transparency = true,
        highlight_inactive_windows = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    event = "VeryLazy",
    opts = {},
  },
  -- {
  -- 	"nobbmaestro/nvim-andromeda",
  -- 	priority = 1000,
  -- 	event = "VeryLazy",
  -- 	dependencies = {
  -- 		"tjdevries/colorbuddy.nvim",
  -- 		branch = "dev",
  -- 	},
  -- 	opts = {
  -- 		preset = "andromeda",
  -- 		transparent_bg = true,
  -- 		styles = {
  -- 			italic = true,
  -- 		},
  -- 	},
  -- },
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    event = "VeryLazy",
    opts = {
      transparent = true,
      italic_comments = true,
      underline_links = true,
      terminal_colors = true,
    },
  },
}
