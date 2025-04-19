return {
  keymap = {
    preset = "super-tab",
  },

  completion = {
    documentation = { auto_show = true, auto_show_delay_ms = 0 },
    menu = {
      draw = {
        align_to = "label",
        columns = {
          { "label",    "label_description", gap = 3 },
          { "kind_icon" },
          { "kind" },
        },
        components = {
          label = {
            ellipsis = true,
            width = { fill = true, min = 40, max = 50 },
          },
        },
      },
    },
    ghost_text = { enabled = false },
  },

  snippets = {
    preset = "luasnip",
  },

  sources = {
    default = {
      "lazydev",
      "lsp",
      "path",
      -- "snippets",
      "buffer",
    },
    providers = {
      lazydev = {
        name = "LazyDev",
        module = "lazydev.integrations.blink",
        score_offset = 100,
      },
    },
  },

  fuzzy = {
    implementation = "prefer_rust_with_warning",
  },
}
