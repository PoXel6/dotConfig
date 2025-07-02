local ls = require('luasnip')
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

local if_opt_fmt = [[
  if ({}) |{}| {{
    {}
  }}
]]
local if_opt = {
  s("if?", fmt(if_opt_fmt,
    { i(1), i(2), i(3) },
    {}
  )),
}
ls.add_snippets("zig", if_opt)
