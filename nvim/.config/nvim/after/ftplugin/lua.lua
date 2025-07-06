vim.keymap.set(
  "n",
  "<leader><leader><leader>",
  "<cmd>%lua<CR>",
  {
    silent = true,
    desc = "[FT]: Source this file"
  }
)

vim.keymap.set(
  "v" ,
  "<leader><leader>",
  "<cmd>'<,'>lua<CR>",
  {
    silent = true,
    desc = "[FT]: Source this visually selected parts"
  }
)

vim.keymap.set(
  "n" ,
  "<leader><leader>",
  "<cmd>.lua<CR>",
  {
    silent = true,
    desc = "[FT]: Source the line im currently on"
  }
)
