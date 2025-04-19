require("oil").setup({
  default_file_explorer = true,
  skip_confirm_for_simple_edits = true,
  view_options = {
    show_hidden = true,
    is_always_hidden = function(name, bufnr)
      local hide_list = {
        "node_modules",
        ".git",
        ".idea",
        ".vscode",
      }
      return vim.tbl_contains(hide_list, name)
    end,
  },
  float = {
    padding = 6,
    max_width = 100,
    max_height = 20,
    border = "rounded",
    win_options = {
      winblend = 0,
    },
  },
})
