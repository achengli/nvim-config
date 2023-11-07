local vimcompletions = {}

--- Checks that vim version is bigger or equal than
--- ver. The function comprobe the value with the major
--- version value.
--- <pre>
---   vim.has = require('vimcompletions').has
---   if vim.has(7) then
---      print('valid version')
---   else
---      print('not valid version')
---   end
--- </pre>
---@param ver number Target version 
---@return boolean b (true when is a valid version)
---@see vim.version()
vimcompletions.has = function (ver)
    return vim.version().major >= ver 
end

return vimcompletions
