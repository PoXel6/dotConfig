local opts = {
	diagnostics = {
		underline = true,
		update_in_insert = false,

		virtual_text = {
			spacing = 4,
			source = "always",
			prefix = "icons",
		},

		float = {
			border = "rounded",
			source = "always",
		},
		severity_sort = true,
	},

	inlay_hints = {
		enabled = true,
	},

	codelens = {
		enabled = false,
	},

	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "", -- or other icon of your choice here, this is just what my config has:
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "󰌵",
		},
		numhl = {
			[vim.diagnostic.severity.WARN] = "WarningMsg",
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.INFO] = "DiagnosticInfo",
			[vim.diagnostic.severity.HINT] = "DiagnosticHint",
		},
	},

	showMessage = {
		messageActionItem = {
			additionalPropertiesSupport = true,
		},
	},

	servers = require("pox.config.lsp.servers"),
}
return opts
