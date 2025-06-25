return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	build = "make install_jsregexp",
	lazy = true,
	event = { "BufWinEnter", "VeryLazy" },
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load({
			"~/.config/nvim/lua/custom/snippets/",
		})
	end,
	-- keys = require("custom.keymaps.luasnip"),
	keys = {
		{
			"<C-e>",
			function()
				local ls = require("luasnip")
				if ls.expand_or_jumpable() then
					ls.expand_or_jump()
				end
			end,
			silent = true,
			mode = { "i", "s" },
			desc = "[E]xpand",
		},
		{
			"<C-k>",
			function()
				local ls = require("luasnip")
				if ls.jumpable(1) then
					ls.jump(1)
				end
			end,
			silent = true,
			mode = { "i" },
			desc = "Jump forward",
		},
		{
			"<C-j>",
			function()
				local ls = require("luasnip")
				if ls.jumpable(-1) then
					ls.jump(-1)
				end
			end,
			silent = true,
			mode = { "i" },
			desc = "Jump backward",
		},
		{
			"<C-l>",
			function()
				local ls = require("luasnip")
				if ls.choice_active() then
					ls.change_choice(1)
				end
			end,
			silent = true,
			mode = { "i" },
			desc = "cycle snippet choices",
		},
	},
}
