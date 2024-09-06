-- LSP Plugins
-------------------------------------------
local lsp_zero = require("lsp-zero")

lsp_zero.extend_lspconfig({
	sign_text = true,
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "clangd" },
})

-- Autocompletion setup
local cmp = require("cmp")

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
	},
	mapping = cmp.mapping.preset.insert({}),
})

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({})
lspconfig.clangd.setup({
	cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
	init_options = {
		fallback_flags = { "-std=c++17" },
	},
})
