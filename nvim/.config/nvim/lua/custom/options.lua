local o = vim.o
local g = vim.g

vim.loader.enable(true)
vim.diagnostic.config({ virtual_lines = true, })

g.mapleader = " "
g.netrw_banner = 0
g.netrw_altfile = 1

-- vim setting
o.showmode = false
o.nu = true
o.relativenumber = true
o.incsearch = true
o.termguicolors = true
o.undofile = true
o.ignorecase = true
o.smartcase = true

o.showbreak = "↪ "
o.updatetime = 250
o.timeoutlen = 300
o.scrolloff = 10
o.cmdheight = 0
o.mouse = "a"

-- Indenting
o.expandtab = true
o.smartindent = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2
