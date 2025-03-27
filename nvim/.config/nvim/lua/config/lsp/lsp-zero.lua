local lsp_zero = require("lsp-zero")

lsp_zero.ui({
	float_border = "rounded",
	sign_text = {
		error = "✘",
		warn = "▲",
		hint = "⚑",
		info = "»",
	},
})

-- Global LSP Configuration
lsp_zero.extend_lspconfig({
	sign_text = true,
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})
