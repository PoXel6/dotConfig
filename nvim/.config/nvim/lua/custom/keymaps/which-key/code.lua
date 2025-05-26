local wk = require("which-key")
wk.add({
  {
    "<leader>c",
    group = "Code",
    icon = "",
  },
  {
    "<leader>ca",
    function()
      vim.lsp.buf.code_action()
    end,
    desc = "[C]ode [A]ction",
    mode = { "n", "v" },
  },
  {
    "<leader>cf",
    function()
      vim.lsp.buf.format()
    end,
    desc = "[C]ode [F]ormat",
    mode = { "n", "v" },
  },
  {
    "<leader>rn",
    function()
      vim.lsp.buf.rename()
    end,
    desc = "[R]e[N]ame",
    mode = { "n", "v" },
  },
})
