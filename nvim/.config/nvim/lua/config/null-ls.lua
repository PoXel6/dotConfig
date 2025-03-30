local augoup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
local builtin = null_ls.builtins.formatting

null_ls.setup({
	sources = {
		builtin.stylua,
		builtin.clang_format,
		builtin.shfmt,
		builtin.prettier,
		eslint = {
			command = "eslint",
			filetypes = {
				"javascript",
				"typescript",
				"javascriptreact",
				"typescriptreact",
				"vue",
			},
		},
	},

	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augoup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augoup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})

vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "[C]ode [F]ormat" })
