return {
	'L3MON4D3/LuaSnip',
	config = function()
		require("luasnip").setup()
		require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })

		local snip = require("luasnip")
		vim.keymap.set({ "i", "s" }, "<C-e>", function()
			return snip.expandable()
				and '<CMD>lua require("luasnip").expand()<CR>'
				or "<C-e>"
		end, { expr = true, silent = true })

		vim.keymap.set({ "i", "s" }, "<Tab>", function()
			if snip.jumpable(1) then
				return '<CMD>lua require("luasnip").jump(1)<CR>'
			else
				return '<Tab>'
			end
		end, { expr = true, silent = true })

		vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
			if snip.jumpable(-1) then
				return '<CMD>lua require("luasnip").jump(-1)<CR>'
			else
				return '<S-Tab>'
			end
		end, { expr = true, silent = true })
		vim.keymap.set({ "i", "s" }, "<C-n>", function()
			if snip.choice_active() then
				return '<CMD>lua require("luasnip").change_choice(1)<CR>'
			else
				return '<C-n>'
			end
		end, { expr = true, silent = true })
		vim.keymap.set({ "i", "s" }, "<C-p>", function()
			if snip.choice_active() then
				return '<CMD>lua require("luasnip").change_choice(-1)<CR>'
			else
				return '<C-p>'
			end
		end, { expr = true, silent = true })
	end,
}
