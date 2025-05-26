local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("python", {
	s(
		"def",
		fmt(
			[[
    def {}({}) -> {}:
      {}

    ]],
			{
				i(1, name),
				i(2, param),
				i(3, returnType),
				i(0),
			},
			{
				delimiters = "{}",
			}
		)
	),
})
