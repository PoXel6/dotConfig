local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("javascript", {
	s(
		"gid",
		fmt(
			[[
    document.getElementById('<>')<>
    ]],
			{
				i(1, "element"),
				i(0),
			},
			{
				delimiters = "<>",
			}
		)
	),
})
ls.add_snippets("javascript", {
	s(
		"log",
		fmt(
			[[
    console.log(<>)
    ]],
			{
				i(0),
			},
			{
				delimiters = "<>",
			}
		)
	),
})
ls.add_snippets("javascript", {
	s(
		"if",
		fmt(
			[[
    if (<>) {
      <>
    }
    ]],
			{
				i(1, "expr"),
				i(0),
			},
			{
				delimiters = "<>",
			}
		)
	),
})
ls.add_snippets("javascript", {
	s(
		"fun",
		fmt(
			[[
    function <>(<>) {
      <>
    }

    ]],
			{
				i(1, name),
				i(2, param),
				i(0),
			},
			{
				delimiters = "<>",
			}
		)
	),
})
ls.add_snippets("javascript", {
	s(
		"afun",
		fmt(
			[[
    async function <>(<>) {
      <>
    }

    ]],
			{
				i(1, name),
				i(2, param),
				i(0),
			},
			{
				delimiters = "<>",
			}
		)
	),
})
ls.add_snippets("javascript", {
	s(
		"forof",
		fmt(
			[[
    for (const <> of <>) {
      <>
    }

    ]],
			{
				i(1, "type"),
				i(2, "arrType"),
				i(0),
			},
			{
				delimiters = "<>",
			}
		)
	),
})
ls.add_snippets("javascript", {
	s(
		"forin",
		fmt(
			[[
    for (const <> in <>) {
      <>
    }

    ]],
			{
				i(1, "type"),
				i(2, "arrType"),
				i(0),
			},
			{
				delimiters = "<>",
			}
		)
	),
})
ls.add_snippets("javascript", {
	s(
		"exde",
		fmt(
			[[
    export default <>;
    ]],
			{
				i(0),
			},
			{
				delimiters = "<>",
			}
		)
	),
})
