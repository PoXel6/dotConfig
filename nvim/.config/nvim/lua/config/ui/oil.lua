require("oil").setup({
  view_options = {
    show_hidden = true,
  },
  float = {
    padding = 6,
    max_width = 75,
    max_height = 20,
    border = "rounded",
    win_options = {
      winblend = 0,
    },
  },
})

vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>e", require("oil").toggle_float, { desc = "Open parent directory in floating mode" })
