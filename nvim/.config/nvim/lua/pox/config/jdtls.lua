local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = vim.fn.stdpath('data') .. '/jdtls-workspaces/' .. project_name
local config = {
  cmd = {
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    'javaagent:' .. vim.fn.stdpath('data') .. '/mason/packages/jdtls/lombok.jar',
    '-jar',

    vim.fn.stdpath('data') .. '/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.7.0.v20250331-1702.jar',
    '-configuration', vim.fn.stdpath('data') .. '/mason/packages/jdtls/config_linux/',

    '-data', workspace_dir,
  },

  root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew" }),

  settings = {
    java = {
      signatureHelp = { enabled = true },

      extendedClientCapabilities = require("jdtls").extendedClientCapabilities,

      maven = {
        downloadSources = true,
      },

      referencesCodeLens = {
        enabled = true,
      },

      references = {
        includeDecompiledSources = true,
      },

      inlayHints = {
        parameterNames = {
          enabled = 'all', -- literals, all, none
        },
      },
    },
  },

  init_options = {
    bundles = {}
  },
}
require('jdtls').start_or_attach(config)
