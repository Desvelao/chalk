package = "chalk"
version = "dev-1"
source = {
   url = "git://github.com/Desvelao/chalk",
   branch = "dev"
}
description = {
   summary = [[Create a cli. Status: alpha]],
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
   },
   copy_directories = {
      "docs"
   }
}
