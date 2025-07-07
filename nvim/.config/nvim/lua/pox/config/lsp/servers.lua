return {

  zls = {},

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
