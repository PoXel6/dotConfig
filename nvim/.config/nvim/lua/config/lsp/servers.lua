return {
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
