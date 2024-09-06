-- vim setting
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.incsearch = true
vim.opt.nu = true
vim.opt.wrap = false

vim.opt.colorcolumn = "100"
vim.opt.updatetime = 50
vim.opt.scrolloff = 10
-------------------------------------------

vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.copyindent = true

vim.opt.showbreak = "↪ "
vim.opt.backspace = { "indent", "eol", "start" }

vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
-------------------------------------------

vim.o.termguicolors = true
-------------------------------------------

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
