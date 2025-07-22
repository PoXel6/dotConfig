return {

  zls = {},

  jdtls = {},

  jsonls = {},

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

  vtsls = {
    settings = {
      vtsls = {
        tsserver = {
          globalPlugins = {
            {
              name = "@vue/typescript-plugin",
              location = vim.fn.stdpath('data') ..
                  "/mason/packages/vue-language-server/node_modules/@vue/language-server",
              languages = { "typescript", "javascript", "vue" },
              enableForWorkspaceTypeScriptVersions = true,
              configNamespace = "typescript",
            },
          },
        },
      },
    },
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx",
      "vue",
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

  vue_ls = {
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
