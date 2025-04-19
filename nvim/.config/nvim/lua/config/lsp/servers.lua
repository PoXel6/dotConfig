return {
  html = {},
  emmet_language_server = {},
  cssls = {},
  css_variables = {},
  tailwindcss = {},
  ts_ls = {},
  eslint = {
    settings = {
      workingDirectories = { mode = "auto" },
      format = auto_format,
    },
  },
  volar = {},
  jsonls = {},
  bashls = {},
  taplo = {},
  jdtls = {},
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
