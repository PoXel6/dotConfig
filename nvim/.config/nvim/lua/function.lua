-- colorscheme
function ColorScheme(color)
	color = color or "catppuccin-mocha"
	vim.cmd.colorscheme(color)
end

ColorScheme()
-------------------------------------------

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
