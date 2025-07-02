local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require('luasnip.extras').rep

local lf_fmt = [[
    local {} = function({})
      {}
    end
    ]]

local lf_inodes = {
  i(1, "name"),
  i(2, "params"),
  i(0),
}

ls.add_snippets("lua", {
  s("lf", fmt(lf_fmt, lf_inodes, {})),
})

local snip_fmt = [[
local {}_fmt = {}

local {}_inodes = {{ {} }}

ls.add_snippets("{}", {{
  s("{}", fmt({}_fmt, {}_inodes, {{}})),
}})
{}]]

local snip_inodes = {
  i(1),
  i(2, "fmt"),
  rep(1),
  i(3, "inodes"),
  i(4, "lang"),
  rep(1),
  rep(1),
  rep(1),
  i(0),
}

ls.add_snippets("lua", {
  s("snip", fmt(snip_fmt, snip_inodes, {})),
})
