local augoup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
local formatter = null_ls.builtins.formatting
local linter = null_ls.builtins.diagnostics

null_ls.setup({
	sources = {
		null_ls.builtins.code_actions.impl,
		null_ls.builtins.code_actions.refactoring,

		formatter.stylua,
		formatter.clang_format,
		formatter.shfmt,
		formatter.prettierd,
		formatter.black,
		formatter.isort,

		linter.mypy,
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
