local lsp_zero = require("lsp-zero")
local lsp_highlight_augroup = vim.api.nvim_create_augroup("LspDocumentHighlight", { clear = false })
-- Setup LSP mappings and configuration
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local map = function(keys, func, desc, mode)
			mode = mode or "n"
			vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
		end
		vim.cmd([[
      highlight NormalFloat guibg=NONE
      highlight FloatBorder guifg=#f5c2e7 guibg=NONE
    ]])
		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
			border = "rounded",
			width = 60,
			height = 15,
		})
		vim.diagnostic.config({
			float = {
				border = "rounded",
				background = "NONE",
			},
		})

		map("K", vim.lsp.buf.hover, "Show Hover Information")
		map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
		map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
		map("gi", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
		map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
		map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
		map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")
		map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
		map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction", "n")
		map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if client and client.supports_method("textDocument/documentHighlight") then
			-- Use the persistent augroup for document highlighting in this buffer
			vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
				buffer = event.buf,
				group = lsp_highlight_augroup,
				callback = vim.lsp.buf.document_highlight,
			})
			vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
				buffer = event.buf,
				group = lsp_highlight_augroup,
				callback = vim.lsp.buf.clear_references,
			})

			vim.api.nvim_create_autocmd("LspDetach", {
				group = vim.api.nvim_create_augroup("kickstart-lsp-detach", { clear = true }),
				callback = function(event2)
					vim.lsp.buf.clear_references()
					vim.api.nvim_clear_autocmds({ group = "kickstart-lsp-highlight", buffer = event2.buf })
				end,
			})
		end

		if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
			map("<leader>ti", function()
				local enabled = vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf })
				vim.lsp.inlay_hint(
					enabled and vim.lsp.inlay_hint.disable or vim.lsp.inlay_hint.enable,
					{ bufnr = event.buf }
				)
			end, "[T]oggle [I]nlay Hints")
		end
	end,
})
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp_flags = {
	allow_incremental_sync = true,
	debounce_text_changes = 150,
}

-- LSP Servers
lspconfig.clangd.setup({
	capabilities = capabilities,
	cmd = { "clangd", "--background-index", "--clang-tidy" },
	init_options = {
		fallback_flags = { "-std=c++17" },
	},
	flag = lsp_flags,
})

lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
				path = vim.split(package.path, ";"),
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
				[vim.fn.stdpath("config") .. "/lua"] = true,
				[vim.fn.stdpath("data") .. "/site/pack/packer/start/"] = true, -- Adjust path if using Lazy
				maxPreload = 1000,
				preloadFileSize = 1024,
			},
			telemetry = { enable = false },
		},
	},
})

local servers = {
	--	"lua_ls",
	"bashls",
	"cssls",
	"ts_ls",
	"emmet_language_server",
	"taplo",
	"html",
	"css_variables",
	"jsonls",
	"volar",
}

-- Loop through each server and configure
for _, server in ipairs(servers) do
	local config = {
		capabilities = capabilities,
		flags = lsp_flags,
	}
	lspconfig[server].setup(config)
end
