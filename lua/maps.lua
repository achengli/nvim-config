vim.has = require'vimcompletions'.has
local utils = require'utils'

-- - Ctrl-Backspace: remove word back.
vim.opt.backspace={'indent','eol','start'}
vim.keymap.set('i','<C-h>', '<C-w>', {silent = true, remap = true})

-- # Rotate between buffers 
-- - Alt-tab: Rotate right 
-- - Shift-tab: to rotate left.
vim.keymap.set('n','<A-tab>', function ()
    if (vim.opt.modifiable and (not vim.opt.readonly) and vim.opt.modified) then
        vim.cmd('write')
    end
    vim.cmd('bnext')
end, {silent = true})

vim.keymap.set('n','<S-tab>', function ()
    vim.cmd([[
    if &modifiable && !&readonly && &modified
        write
    endif
    bprevious]])
end, {silent = true})

-- # Resize split windows
vim.keymap.set('n','<C-h>',function ()
    vim.cmd[[vertical resize -10]]
end,{silent = true})
vim.keymap.set('n','<C-j>',function ()
    vim.cmd[[horizontal resize +10]]
end,{silent = true})
vim.keymap.set('n','<C-k>',function ()
    vim.cmd[[horizontal resize -10]]
end,{silent = true})
vim.keymap.set('n','<C-l>',function ()
    vim.cmd[[vertical resize +10]]
end,{silent = true})

vim.keymap.set('i','<C-BS>','<C-w>',{})


-- # DAP commands
-- - Ctrl-b: Toggle breakpoint inline
-- - Ctrl-c: Continue
-- - Ctrl-i: Step into
-- - Ctrl-o: Step over
vim.keymap.set('n', '<C-b>b', function ()
    require'dap'.toggle_breakpoint()
end, {silent=true})

vim.keymap.set('n', '<C-b>c', function ()
    require'dap'.continue()
end, {silent=true})

vim.keymap.set('n', '<C-b>i', function ()
    require'dap'.step_into()
end, {silent=true})

vim.keymap.set('n', '<C-b>o', function ()
    require'dap'.step_over()
end, {silent=true})
