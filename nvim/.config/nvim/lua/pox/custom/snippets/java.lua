local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt

local cls_fmt = "public class {} {{\n\t{}\n}}"

local cls_inodes = { f(function(args, snip)
  local ft = snip.env.TM_FILENAME
  local arr = vim.split(ft, ".", { plain = true })
  return arr[1]
end, {}), i(0) }

local cls = {
  s("cls", fmt(cls_fmt, cls_inodes, {})),
}

local pkg_fmt = "package {};"

local pkg_inodes = { f(function()
  local full_path = vim.fn.expand("%")
  local list = vim.split(full_path, "/", { plain = true })
  local res = {}
  local offset = 3
  for ind = 1, #list - offset - 1 do
    res[ind] = list[ind + offset]
  end
  return vim.fn.join(res, ".")
end, {}) }

local pkg = {
  s("pkg", fmt(pkg_fmt, pkg_inodes, {})),
}

ls.add_snippets("java", pkg)
ls.add_snippets("java", cls)
