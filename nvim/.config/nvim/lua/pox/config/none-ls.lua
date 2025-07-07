local augoup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
local fmt = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local impl = null_ls.builtins.code_actions.impl
local ref = null_ls.builtins.code_actions.refactoring

null_ls.setup({
	sources = {
		impl,
		ref,

		fmt.stylua,
		fmt.shfmt,
		fmt.black,
		fmt.isort,

		lint.mypy,
	},

	on_attach = function(client, bufnr)
		if client:supports_method("textDocument/formatting") then
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
