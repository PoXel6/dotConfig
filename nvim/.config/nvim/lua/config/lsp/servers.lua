return {

	biome = {
		single_file_support = true,
		filetypes = {
			"astro",
			"css",
			"graphql",
			"html",
			"javascript",
			"javascriptreact",
			"json",
			"jsonc",
			"svelte",
			"typescript",
			"typescript.tsx",
			"typescriptreact",
			"vue",
		},
	},
	ts_ls = {
		init_options = {
			preferences = {
				disableSuggestions = true,
			},
			-- Vue support
			-- plugins = {
			-- 	{
			-- 		name = "@vue/typescript-plugin",
			-- 		location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
			-- 		languages = { "javascript", "typescript", "vue" },
			-- 	},
			-- },
		},
	},
	cssls = {},
	emmet_language_server = {
		filetypes = {
			"css",
			"eruby",
			"html",
			"javascriptreact",
			"typescriptreact",
			"vue",
			"less",
			"sass",
			"scss",
			"pug",
		},
		-- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
		-- **Note:** only the options listed in the table are supported.
		init_options = {
			---@type table<string, string>
			includeLanguages = {},
			--- @type string[]
			excludeLanguages = {},
			--- @type string[]

			extensionsPath = {},
			--- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)

			preferences = {},
			--- @type boolean Defaults to `true`
			showAbbreviationSuggestions = true,
			--- @type "always" | "never" Defaults to `"always"`
			showExpandedAbbreviation = "always",
			--- @type boolean Defaults to `false`
			showSuggestionsAsSnippets = false,
			--- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
			syntaxProfiles = {},
			--- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)

			variables = {},
		},
	},
	volar = {
		init_options = {
			vue = {
				hybridMode = true,
			},
		},
	},
	clangd = {
		cmd = {
			"clangd",
			"--background-index",
			"--clang-tidy",
		},
		init_options = {
			fallback_flags = { "-std=c++17" },
		},
		---@diagnostic disable-next-line: undefined-global
		flag = lsp_flags,
	},
	lua_ls = {
		codelens = {
			enable = true,
		},
		hints = {
			enable = true,
			setType = false,
			paramType = true,
			paramName = "Disable",
			semicolon = "Disable",
			arrayIndex = "Disable",
		},
	},
	gopls = {
		completeUnimported = true,
		usePlaceholders = true,
		analyses = {
			unusedparams = true,
		},
		hints = {
			assignVariableTypes = true,
			compositeLiteralFields = true,
			compositeLiteralTypes = true,
			constantValues = true,
			functionTypeParameters = true,
			parameterNames = true,
			rangeVariableTypes = true,
		},
	},

	pyright = {},
	ruff = {},

	rust_analyzer = {},
}
