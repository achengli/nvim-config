local utils = {}

--- function utils.info
--- Takes a message `msg` and displays it with the selected `mode`.
--- --
--- @param msg string
--- @param mode string
utils.info = function(msg, mode)
    if (string.match(mode, 'Debug')) then
        error(msg)
    else
        print(msg)
    end
end

return utils
