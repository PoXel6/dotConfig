<<<<<<< HEAD
-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modules
require("remaps")
require("lazy_setup")
require("myOptions")
require("lazy").setup(require("plugins"))
=======
require("lazy_setup")
require("remap")
require("opt")
require("function")
require("lazy").setup('plugins')
-------------------------------------------
>>>>>>> 5972b38 (made nvim 10x better)
