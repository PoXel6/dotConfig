local opts = {

  diagnostics = {
    underline = true,
    update_in_insert = false,

    virtual_text = {
      spacing = 4,
      source = "if_many",
      prefix = "●",
      -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
      -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
      -- prefix = "icons",
    },
    severity_sort = true,
  },

  inlay_hints = {
    enabled = true,
    exclude = { "vue" },
  },

  codelens = {
    enabled = false,
  },

  servers = {
    bashls = {},
    cssls = {},
    ts_ls = {},
    emmet_language_server = {},
    taplo = {},
    html = {},
    css_variables = {},
    jsonls = {},
    tailwindcss = {},
    volar = {},
    clangd = {
      cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
      },
      init_options = {
        fallback_flags = { "-std=c++17" },
      },
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
    java_language_server = {},
  },
}
return opts
