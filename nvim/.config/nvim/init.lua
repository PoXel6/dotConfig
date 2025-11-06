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
vim.g.netrw_banner = false
vim.o.laststatus = 3
vim.o.fillchars = "eob: "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.lsp.enable({
	"emmylua_ls",
	"rust_analyzer",
	"clangd", "clang-format",
	"vtsls", "biome",
	"bashls", "shfmt",
	"emmet_language_server", "superhtml",
	"cssls", "css_variables",
	"jsonls",
	"ruff", "pyright",
	"tinymist", "marksman",
	"jdtls",
})

require("lazy").setup({
	spec = { { import = "plugins" }, },
	install = { colorscheme = { "doom-one" } },
	checker = { enabled = true },
	change_detection = {
		enabled = true,
		notify = false,
	},
})

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	callback = function()
		vim.highlight.on_yank({ higroup = 'Visual' })
	end,
})

vim.api.nvim_create_user_command("Chmod", '!chmod +x %', {})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<C-J>", ":co '<<CR>gv=gv", { silent = true })
vim.keymap.set("v", "<C-K>", ":co '>-1<CR>gv=gv", { silent = true })

vim.keymap.set("n", "<leader>r", "<CMD>make<CR>")
vim.keymap.set("n", "<F5>", "<CMD>update<CR><CMD>restart<CR>")
vim.keymap.set("n", "-", "<CMD>Ex<CR>")
vim.keymap.set("n", "<leader><leader>", "<CMD>e #<CR>")
vim.keymap.set({ "x", "v", "n" }, "<leader>y", '"+y')
vim.keymap.set({ "x", "v", "n" }, "gro", vim.lsp.buf.format)
