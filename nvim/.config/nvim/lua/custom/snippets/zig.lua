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
    { i(1, "optional"), i(2, "val"), i(0) },
    {}
  )),
}

local gpa_fmt = "const gpa = std.heap.GeneralPurposeAllocator(.{{}});\ngpa.{}"

local gpa_inodes = { i(0) }

local gpa = {
  s("gpa", fmt(gpa_fmt, gpa_inodes, {})),
}

ls.add_snippets("zig", gpa)
ls.add_snippets("zig", if_opt)
