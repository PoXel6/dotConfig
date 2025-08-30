vim.loader.enable()
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"
vim.o.scrolloff = 10
vim.o.sidescrolloff = 10
vim.o.wrap = false
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.netrw_banner = false

vim.pack.add({
	'https://github.com/poxel6/doom-one.nvim',
	'https://github.com/nvim-lua/plenary.nvim',
	'https://github.com/mason-org/mason.nvim',
	'https://github.com/L3MON4D3/LuaSnip',
	'https://github.com/saghen/blink.cmp',
	'https://github.com/nvim-telescope/telescope.nvim',
	'https://github.com/nvim-telescope/telescope-ui-select.nvim',
	'https://github.com/nvim-telescope/telescope-fzy-native.nvim',
	'https://github.com/nvim-treesitter/nvim-treesitter'
})

local blink_config = {
	keymap = {
		preset = 'default',
		['<C-e>'] = {},
		['<C-k>'] = {},
		['<C-y>'] = { 'select_and_accept', 'fallback' },

	},
	completion = {
		documentation = { window = { scrollbar = false, max_width = 35, } },
		menu = {
			max_height = 9,
			scrollbar = false,
			draw = {
				align_to = "label",
				columns = { { "label", gap = 3 }, { "kind_icon" }, { "kind" } },
				components = {
					label = { ellipsis = true, width = { fill = false, min = 30, max = 35, } },
				},
			},
		},
	},
	sources = { default = { 'lsp', 'path', 'buffer' } },
}

local telescope_config = {
	defaults = {
		preview = false,
		file_ignore_patterns = {
			"target/",
			"bin/",
			"node_modules/",
		},
	},
	pickers = {},
	extensions = {}
}

require("mason").setup()
require("luasnip").setup()
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })
require("blink.cmp").setup(blink_config)
require("telescope").setup(telescope_config)
require("telescope").load_extension("ui-select")
require("telescope").load_extension("fzy_native")

vim.cmd("colorscheme doom-one")
-- TODO Add these defaults to the Theme configs
vim.cmd(":hi statusline guibg=NONE")
vim.cmd(":hi tabline guibg=NONE")
vim.cmd(":hi tablinefill guibg=NONE")
vim.g.doom_one_plugin_telescope = true

vim.lsp.enable({
	"lua_ls",
	"rust_analyzer",
	"vtsls",
	"emmet_language_server", "superhtml",
	"cssls", "css_variables",
	"jsonls", "shfmt",
	"ruff", "pyright", "mypy",
	"tinymist",
})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	callback = function()
		vim.highlight.on_yank({ higroup = 'Visual' })
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "When client attaches to the server",
	callback = function()
		vim.notify(string.format("Attached to %s", vim.lsp.buf_get_clients()[1].name))
	end,
})

vim.keymap.set("n", "<leader><leader>", "<CMD>e #<CR>")
vim.keymap.set("n", "-", "<CMD>Ex<CR>")
vim.keymap.set("n", "<leader>sf", "<CMD>Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "<leader>sh", "<CMD>Telescope help_tags<CR>", { silent = true })
vim.keymap.set({ "x", "v" }, "J", ":'<,'>move+1<CR>gv")
vim.keymap.set({ "x", "v" }, "K", ":'<,'>move-2<CR>gv")
vim.keymap.set({ "x", "v", "n" }, "gro", vim.lsp.buf.format)
vim.keymap.set({ "i", "s" }, "<C-e>", function()
	return require("luasnip").expandable()
		and '<CMD>lua require("luasnip").expand()<CR>'
		or "<C-e>"
end, { expr = true, silent = true })

vim.keymap.set({ "i", "s" }, "<Tab>", function()
	return require("luasnip").jumpable(1)
		and '<CMD>lua require("luasnip").jump(1)<CR>'
		or '<Tab>'
end, { expr = true, silent = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
	return require("luasnip").jumpable(-1)
		and '<CMD>lua require("luasnip").jump(-1)<CR>'
		or '<S-Tab>'
end, { expr = true, silent = true })
