local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

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
