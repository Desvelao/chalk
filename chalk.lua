local colors_codes = {
    reset = 0,
    bold = 1,
    underline = 4,
    reversed = 7,
    black = 30,
    red = 31,
    green = 32,
    yellow = 33,
    blue = 34,
    magenta = 35,
    cyan = 36,
    white = 37,
    bgblack = 40,
    bgred = 41,
    bggreen = 42,
    bgyellow = 43,
    bgblue = 44,
    bgmagenta = 45,
    bgcyan = 46,
    bgwhite = 47
}

local escape_string = string.char(27) .. '[%dm' --"\u{001b}["..value.."m"
local function colorize(value)
    return escape_string:format(value)
end

function chalk(acummulator)
    acummulator = acummulator or ""
    return setmetatable({},{
        __index = function(t, key)
            print(key)
            if(colors_codes[key] ~= nil) then
                return chalk(acummulator..colorize(colors_codes[key]))
            elseif (key == "__acum") then
                return acummulator
            else
                error(string.format("chalk key: %s is not valid", tostring(key)))
            end
        end,
        __call = function(cls, text)
            return acummulator .. text .. colorize(colors_codes.reset)
        end
    })
end

return chalk()
