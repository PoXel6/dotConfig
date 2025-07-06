vim.keymap.set(
  "n",
  "<leader><leader>",
  "<cmd>!chmod +x %<CR>",
  {
    silent = true,
    desc = "[FT]: Make this File Excutable"
  }
)

