return {
  html = {},
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
  cssls = {},
  tailwindcss = {},
  ts_ls = {},
  eslint = {
    settings = {
      workingDirectories = { mode = "auto" },
      format = auto_format,
    },
  },
  volar = {
    init_options = {
      vue = {
        hybridMode = true,
      },
    },
  },
  jsonls = {},
  bashls = {},
  taplo = {},
  -- jdtls = {},
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
}
