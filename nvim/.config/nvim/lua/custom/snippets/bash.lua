local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

--stylua:ignore
ls.add_snippets("sh", {
	s(
		"#",
		fmt(
			[[
  #!/usr/bin/env bash
    ]],
			{},
			{}
		)
	),
})
