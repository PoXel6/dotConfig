return {
	{
		"goolord/alpha-nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.startify")

			dashboard.section.header.val = {
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                     ]],
				[[       ████ ██████           █████      ██                     ]],
				[[      ███████████             █████                             ]],
				[[      █████████ ███████████████████ ███   ███████████   ]],
				[[     █████████  ███    █████████████ █████ ██████████████   ]],
				[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
				[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
				[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                       ]],
			}

			alpha.setup(dashboard.opts)
		end,
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	{
		{
			"L3MON4D3/LuaSnip",
			event = { "BufRead", "BufNewFile" },
			dependencies = {
				"saadparwaiz1/cmp_luasnip",
				"rafamadriz/friendly-snippets",
			},
			config = function()
				require("config.luasnip")
			end,
		},
		{
			"hrsh7th/cmp-nvim-lsp",
			event = "InsertEnter",
			dependencies = {
				"hrsh7th/nvim-cmp",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-buffer",
			},
			config = function()
				require("config.cmp")
			end,
		},
	},

	{
		{ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
		{
			"williamboman/mason.nvim",
			dependencies = {
				"williamboman/mason-lspconfig.nvim",
			},

			config = function()
				require("mason").setup({
					ui = {
						show_progress = true,
						border = "rounded",
						icons = {
							package_pending = " ",
							package_installed = " ",
							package_uninstalled = " ",
						},
					},
				})
				require("mason-lspconfig").setup({
					ensure_installed = { "lua_ls" },
					automatic_installation = true,
					PATH = "skip",
				})
			end,
		},
		{
			"neovim/nvim-lspconfig",
			config = function()
				return require("config.lsp-config")
			end,
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("config.lualine")
		end,
	},

	{
		"nvimtools/none-ls.nvim",
		event = "VeryLazy",
		config = function()
			require("config.null-ls")
		end,
	},

	{
		{
			"nvim-telescope/telescope.nvim",
			event = "BufReadPre",
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
				require("config.telescope.telescope")
			end,
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		event = "BufWinEnter",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs", -- Sets main module to use for opts
		opts = {
			vim.filetype.add({
				pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
			}),
			ensure_installed = { "lua", "luadoc", "bash", "c", "bash" },
			auto_install = true,
			highlight = {
				enable = true,
				use_languagetree = true,
			},
			indent = { enable = true },
		},
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("config.autotag")
		end,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",

		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
}
