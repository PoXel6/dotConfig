vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-------------------------------------------

vim.opt.number = true
vim.opt.relativenumber = true
-------------------------------------------

vim.opt.splitright = true
vim.opt.splitbelow = true
-------------------------------------------

vim.opt.scrolloff = 10
vim.opt.colorcolumn = "100"
vim.opt.termguicolors = true
vim.opt.incsearch = true
vim.opt.wrap = false
vim.g.have_nerd_font = true
vim.opt.mouse = "a"
vim.opt.updatetime = 50
vim.opt.timeoutlen = 300
vim.opt.hlsearch = true
-------------------------------------------

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"
-------------------------------------------

function ColorScheme(color)
	color = color or "catppuccin-mocha"
	vim.cmd.colorscheme(color)
end
ColorScheme()
-------------------------------------------
