local opt = vim.opt
local o = vim.o
local g = vim.g

vim.loader.enable(true)

g.mapleader = " "
g.toggle_theme_icon = "   "
g.netrw_banner = 0

-- vim setting
opt.relativenumber = true
opt.termguicolors = true
o.termguicolors = true
opt.incsearch = true
opt.nu = true
opt.wrap = false

-- Fold
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99
opt.foldcolumn = "1"
o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

opt.showbreak = "↪ "
opt.backspace = { "indent", "eol", "start" }

opt.updatetime = 500
opt.scrolloff = 10

-- Case
o.ignorecase = true
o.smartcase = true

o.mouse = "a"

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2
