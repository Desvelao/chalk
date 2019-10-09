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