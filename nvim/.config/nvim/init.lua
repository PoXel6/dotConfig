vim.loader.enable()
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.signcolumn = "no"
vim.o.winborder = "rounded"
vim.o.scrolloff = 10
vim.o.sidescrolloff = 10
vim.o.wrap = false
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.netrw_banner = false

vim.pack.add({
	'https://github.com/poxel6/nvtheme.nvim',
	'https://github.com/nvim-lua/plenary.nvim',
	'https://github.com/mason-org/mason.nvim',
	'https://github.com/L3MON4D3/LuaSnip',
	'https://github.com/saghen/blink.cmp',
	'https://github.com/nvim-telescope/telescope.nvim',
	'https://github.com/nvim-telescope/telescope-ui-select.nvim',
	'https://github.com/nvim-telescope/telescope-fzy-native.nvim',
	'https://github.com/nvim-treesitter/nvim-treesitter',
	'https://github.com/iamcco/markdown-preview.nvim',
})

require('nvtheme').setup({theme = "doom"})
require("mason").setup()
require("luasnip").setup()
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })
require("blink.cmp").setup {
	keymap = {
		preset = 'default',
		['<C-e>'] = {},
		['<C-k>'] = { 'fallback' },
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
	sources = { default = { 'lsp', 'path', 'buffer' } }
}
require("telescope").setup {
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
require("telescope").load_extension("ui-select")
require("telescope").load_extension("fzy_native")

vim.lsp.enable({
	"emmylua_ls",
	"rust_analyzer",
	"clangd", "clang-format",
	"vtsls",
	"bashls", "shfmt",
	"emmet_language_server", "superhtml",
	"cssls", "css_variables",
	"jsonls",
	"ruff", "pyright", "mypy",
	"tinymist", "marksman",
	"jdtls",
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
		vim.notify(string.format("Attached to %s", vim.lsp.get_clients()[1].name))
	end,
})

vim.keymap.set("n", "<leader><leader>", "<CMD>e #<CR>")
vim.keymap.set("n", "-", "<CMD>Ex<CR>")
vim.keymap.set("n", "<leader>sf", "<CMD>Telescope find_files<CR>", { silent = true })
vim.keymap.set("n", "<leader>sh", "<CMD>Telescope help_tags<CR>", { silent = true })
vim.keymap.set("n", "<leader>sl", "<CMD>Telescope live_grep<CR>", { silent = true })
vim.keymap.set("n", "<leader>t", "<CMD>tab term<CR>", { silent = true })
vim.keymap.set({ "x", "v", "n" }, "gro", vim.lsp.buf.format)
vim.keymap.set({ "i", "s" }, "<C-e>", function()
	return require("luasnip").expandable()
		and '<CMD>lua require("luasnip").expand()<CR>'
		or "<C-e>"
end, { expr = true, silent = true })

vim.keymap.set({ "i", "s" }, "<Tab>", function()
	if require("luasnip").jumpable(1) then
		return '<CMD>lua require("luasnip").jump(1)<CR>'
	else
		return '<Tab>'
	end
end, { expr = true, silent = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
	if require("luasnip").jumpable(-1) then
		return '<CMD>lua require("luasnip").jump(-1)<CR>'
	else
		return '<S-Tab>'
	end
end, { expr = true, silent = true })
vim.keymap.set({ "i", "s" }, "<C-n>", function()
	if require("luasnip").choice_active() then
		return '<CMD>lua require("luasnip").change_choice(1)<CR>'
	else
		return '<C-n>'
	end
end, { expr = true, silent = true })
vim.keymap.set({ "i", "s" }, "<C-p>", function()
	if require("luasnip").choice_active() then
		return '<CMD>lua require("luasnip").change_choice(-1)<CR>'
	else
		return '<C-p>'
	end
end, { expr = true, silent = true })


vim.api.nvim_set_hl(0,"TabLine", { bg = "NONE" })
vim.api.nvim_set_hl(0,"TabLineSel", { bg = "NONE" })
vim.api.nvim_set_hl(0,"TabLineFill", { bg = "NONE" })
vim.api.nvim_set_hl(0,"StatusLine", { bg = "NONE" })
vim.api.nvim_set_hl(0,"StatusLineNC", { bg = "NONE" })
vim.api.nvim_set_hl(0,"StatusLinePart", { bg = "NONE" })
