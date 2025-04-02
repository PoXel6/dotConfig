return {
	{
		"williamboman/mason.nvim",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
		event = {
			"FileType",
			"VeryLazy",
		},
		lazy = true,
		config = function()
			require("config.lsp.mason")
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = true,
		event = "VeryLazy",
		opts = {
			servers = {
				bashls = {},
				cssls = {},
				ts_ls = {},
				emmet_language_server = {},
				taplo = {},
				html = {},
				css_variables = {},
				jsonls = {},
				tailwindcss = {},
				volar = {},
				vls = {},
				clangd = {
					cmd = {
						"clangd",
						"--background-index",
						"--clang-tidy",
					},
					init_options = {
						fallback_flags = { "-std=c++17" },
					},
					flag = lsp_flags,
				},
				lua_ls = {},
			},
		},
		config = function(_, opts)
			local lspconfig = require("lspconfig")
			for server, config in pairs(opts.servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				lspconfig[server].setup(config)
			end
		end,
	},
	-- vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show Hover Information" })
	-- vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions,{ desc = "[G]oto [D]efinition" })
	-- vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references,{ desc = "[G]oto [R]eferences" })
	-- vim.keymap.set("n", "gi", require("telescope.builtin").lsp_implementations,{ desc = "[G]oto [I]mplementation" })
	-- vim.keymap.set("n", "gD", vim.lsp.buf.declaration,{ desc = "[G]oto [D]eclaration" })
	-- vim.keymap.set("n", "<leader>D", require("telescope.builtin").lsp_type_definitions,{ desc = "Type [D]efinition" })
	-- vim.keymap.set("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols,{ desc = "[D]ocument [S]ymbols" })
	-- vim.keymap.set("n", "<leader>crn", vim.lsp.buf.rename,{ desc = "[C]ode [R]e[n]ame" })
	-- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,{ desc = "[C]ode [A]ction" }, "n")
}
