local augoup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
local fmt = null_ls.builtins.formatting

null_ls.setup({
	sources = {
		fmt.stylua,
		fmt.clang_format,
		fmt.shfmt,
		fmt.prettier,
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

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
