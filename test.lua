local chalk = require('chalk')

local rbgb = chalk.style("red bgblue")

print(rbgb("hi"))

local chalk_text = chalk.style("red bgyellow")
print(chalk_text("Red foreground and blue background"))
print(chalk_text.blue("hello"))