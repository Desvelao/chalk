# Chalk for Lua
Colorize strings to create nice messages in terminal. Usefull for cli apps. It's inspired by JavaScript's [chalk](https://github.com/chalk/chalk).

# Installation
```bash
luarocks install chalk
```

# Usage
```lua
local chalk = require"chalk"

print(chalk.red("This message is red"))
-- You can chain methods
print(chalk.red.bgblue("This message have red foreground and blue background"))

-- Create a custom style
local chalk_text = chalk.style("red bgblue")
-- chalk_text is chalk.red.bgblue function
print(chalk_text("Red foreground and blue background"))
-- same that
print(chalk.style("red bgblue")("Red foreground and blue background"))

-- You can reuse custom chalk funtions to add/change foreground/backgroudn color
local text_blue = chalk.blue -- or chalk.style("blue")
local text_blue_bgyellow = text_blue.bgyellow -- same chalk.blue.bgyellow
local text_blue_bgred = text_blue.bgred -- same chalk.blue.bgred
```

# Styles
- bold
- underline
- reversed
- black
- red
- green
- yellow
- blue
- magenta
- cyan
- white
- bgblack
- bgred
- bggreen
- bgyellow
- bgblue
- bgmagenta
- bgcyan
- bgwhite