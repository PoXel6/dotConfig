local opt = vim.opt
local o = vim.o
local g = vim.g

g.mapleader = " "
g.toggle_theme_icon = "   "
g.netrw_banner = 0
-- vim setting
opt.relativenumber = true
opt.termguicolors = true
opt.incsearch = true
opt.nu = true
opt.wrap = false

opt.showbreak = "↪ "
opt.backspace = { "indent", "eol", "start" }

opt.colorcolumn = "100"
opt.updatetime = 500
opt.scrolloff = 10
-------------------------------------------

o.ignorecase = true
o.smartcase = true
o.mouse = "a"

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

-------------------------------------------

o.termguicolors = true
-------------------------------------------

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})