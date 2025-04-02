vim.api.nvim_create_user_command("Config", function(opts)
	vim.cmd("e ~/.config")
end, { nargs = 0 })

vim.api.nvim_create_user_command("Code", function(opts)
	vim.cmd("e ~/CodeezNutz")
end, { nargs = "?" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
