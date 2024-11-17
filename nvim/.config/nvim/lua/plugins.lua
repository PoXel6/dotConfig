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
	-- ======== THEMES ======== --

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = ...,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
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
			--event = "BufReadPre",
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
		ft = {
			"html",
			"htmx",
			"css",
			"js",
			"jsx",
			"ts",
			"tsx",
			"vue",
			"xml",
			"svelte",
			"markdown",
		},
		config = function()
			require("config.autotag")
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
	},
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("config.oil")
		end,
	},
}
