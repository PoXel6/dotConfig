local opt = vim.opt
local o = vim.o
local g = vim.g

vim.loader.enable(true)
vim.diagnostic.config({
  virtual_lines = true,
})
g.mapleader = " "
g.netrw_altfile = 1
g.toggle_theme_icon = "   "
g.netrw_banner = 0

-- vim setting
opt.relativenumber = true
opt.termguicolors = true
opt.incsearch = true
opt.nu = true
opt.wrap = false

o.termguicolors = true
o.showmode = false
o.undofile = true

opt.showbreak = "↪ "
opt.backspace = { "indent", "eol", "start" }

opt.updatetime = 250
o.timeoutlen = 300
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
