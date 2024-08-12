-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modules
require("remaps")
require("lazy_setup")
require("myOptions")
require("lazy").setup(require("plugins"))
