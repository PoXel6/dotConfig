local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

local testmod_fmt = [[
#[cfg(test)]
mod tests {{
    use super::*;

    #[test]
    fn {}() {{
        assert_eq!();
    }}

}}
]]
local testmod_inodes = { i(0) }
local testmod = {
    s("testmod", fmt(testmod_fmt, testmod_inodes, {})),
}

local test_fmt = [[
#[test]
fn test_{}() {{
    assert_eq!();
}}
]]
local test_inodes = { i(0) }
local test = {
    s("test", fmt(test_fmt, test_inodes, {})),
}

ls.add_snippets("rust", test)
ls.add_snippets("rust", testmod)
