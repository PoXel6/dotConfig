local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

local tmod_fmt = [[
#[cfg(test)]
mod tests {{
    use super::*;

    #[test]
    fn {}() {{
        assert_eq!();
    }}

}}
]]
local tmod_inodes = { i(0) }
local tmod = {
	s("tmod", fmt(tmod_fmt, tmod_inodes, {})),
}

local test_fmt = [[
#[test]
fn test_{}() {{
    assert_eq!({});
}}
]]
local test_inodes = { i(1), i(0) }
local test = {
	s("test", fmt(test_fmt, test_inodes, {})),
}

ls.add_snippets("rust", test)
ls.add_snippets("rust", tmod)
