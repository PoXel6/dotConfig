-- Zero config modules
require("mini.diff").setup()
require("mini.surround").setup()
require("mini.ai").setup()
require("mini.operators").setup()

-- config modules
require("mini.icons").setup(require("config.mini.icons"))
require("mini.notify").setup(require("config.mini.notify"))
require("config.mini.hipatterns")
