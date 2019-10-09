package = "chalk"
version = "dev-1"
source = {
   url = "git://github.com/Desvelao/chalk",
   branch = "dev"
}
description = {
   summary = [[Colorize strings to create nice messages in terminal]],
   homepage = "https://github.com/Desvelao/chalk",
   license = "MIT"
}
dependencies = {
   "lua>=5.1"
}
build = {
   type = "builtin",
   modules = {
      chalk = "chalk.lua"
   }
}
