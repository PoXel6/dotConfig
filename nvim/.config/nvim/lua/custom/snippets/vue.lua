local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

local temp_fmt = "<template>\n\t{}\n</template>"

local temp_inodes = { i(0) }

local temp = {
  s("temp", fmt(temp_fmt, temp_inodes, {})),
}

local css_fmt = "<style>\n\t{}\n</style>"

local css_inodes = { i(0) }

local css = {
  s("css", fmt(css_fmt, css_inodes, {})),
}

local ts_fmt = "<script setup lang=\"ts\">\n\t{}\n</script>"

local ts_inodes = { i(0) }

local ts = {
  s("ts", fmt(ts_fmt, ts_inodes, {})),
}

ls.add_snippets("vue", ts)
ls.add_snippets("vue", css)
ls.add_snippets("vue", temp)
