local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

--stylua:ignore
ls.add_snippets("vue", {
  s(
    "temp",
    fmt(
      [[
    <template>
      ()
    </template>
    ]],
      {
        i(0),
      },
      {
        delimiters = "()",
      }
    )
  ),
})

ls.add_snippets("vue", {
  s(
    "setup",
    fmt(
      [[
  <script setup lang="()">
    ()
  </script>

  ]],
      {
        i(1, "ts"),
        i(2, ""),
      },
      {
        delimiters = "()",
      }
    )
  ),
})
