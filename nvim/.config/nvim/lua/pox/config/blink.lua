return {
  keymap = {
    preset = "default",
    ["<C-e>"] = {},
  },

  completion = {
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 0,
      window = {
        max_width = 35,
        border = "rounded",
      },
    },

    menu = {
      border = "rounded",
      max_height = 7,
      winblend = 0,
      scrollbar = false,

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
            width = {
              fill = false,
              min = 30,
              max = 35,
            },
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
