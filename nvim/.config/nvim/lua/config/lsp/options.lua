local opts = {
  diagnostics = {
    underline = true,
    update_in_insert = false,

    virtual_text = {
      spacing = 4,
      source = "if_many",
      prefix = "icons",
    },
    severity_sort = true,
  },

  inlay_hints = {
    enabled = true,
  },

  codelens = {
    enabled = false,
  },

  servers = require('config.lsp.servers')
}
return opts
