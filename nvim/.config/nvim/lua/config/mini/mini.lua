-- Zero config modules
require("mini.diff").setup()
require("mini.splitjoin").setup()
require("mini.git").setup()
require("mini.pairs").setup()
require("mini.surround").setup()
require("mini.ai").setup()
require("mini.operators").setup()

-- config modules
require("mini.comment").setup(require("config.mini.comment"))
require("mini.icons").setup(require("config.mini.icons"))
require("mini.notify").setup(require('config.mini.notify'))

--
require("config.mini.hipatterns")
