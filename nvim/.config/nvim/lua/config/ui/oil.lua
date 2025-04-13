require("oil").setup({
  default_file_explorer = true,
  skip_confirm_for_simple_edits = true,
  view_options = {
    show_hidden = true,
  },
  float = {
    padding = 6,
    max_width = 100,
    max_height = 20,
    border = "rounded",
    win_options = {
      winblend = 0.9,
    },
  },
})
