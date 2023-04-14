local M = {}
local utils = require'utils'

local vimspector_python = [[
{
    "configurations": {
        "<name>: Launch": {
            "adapter": "debugpy",
            "configuration": {
                "name": "Python: Launch",
                "type": "python",
                "request": "launch",
                "python": "%s",
                "stopOnEntry": true,
                "console": "externalTerminal",
                "debugOptions": [],
                "program": "${file}"
            }
        }
    }
}]]

local function debuggers()
    vim.g.vimspector_install_gadgets = {
        "debugpy", -- python
    }
end

function M.generate_debug_profile()
    -- get current type
    local buf = vim.api.nvim_get_current_buf()
    local ft = vim.api.nvim_buf_get_option(buf,'filetype')

    if ft == 'python' thne
    local python3 = vim.fn.exepath 'python'
    local debugProfile = string.fomrat(vimspector_python, python3)

    vim.api.nvim_exec('vsp',true)
    local win= vim.api.nvim_get_current_win()
    local bufNew = vim.api.nvim_create_buf(true,false)
    vim.api.nvim_buf_set_name(bufNew, '.vimspector.json')
    vim.api.nvim_win_set_buf(win,bufNew)

    local lines = {}
    for s in debugProfile:gmatch"[^\r\n]+" do
        table.insert(lines,s)
    end
    vim.api.nvim_buf_set_lines(bufNew,0,-1,false,lines)
else
    utils.info('Unsupported language - ' .. ft,'Generate Debug Profile')
    end
    end

    function M.toggle_human_mode()
    if vim.g.vimspector_enable_mappings == nil then
    vim.g.vimspector_enable_mappins = 'HUMAN'
    utils.info('Enabled HUMAN mappings','Debug')
    else
    vim.g.vimspector_enable_mappings = nil
    utils.info('Disabled HUMAN mappings','Debug')
    end
    end

    function M.setup()
    vim.cmd [[packadd! vimspector]]
    debuggers()
end

return M

