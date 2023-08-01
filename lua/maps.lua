vim.has = require'vimcompletions'.has
local utils = require'utils'

-- Control + backspace == remove word back.
vim.opt.backspace={'indent','eol','start'}
vim.keymap.set('i','<C-h>', '<C-w>', {silent = true, remap = true})

-- Rotate between buffers using Alt-tab to rotate right and Shift-tab 
-- to rotate left.
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

vim.keymap.set('n','<C-x><C-t>',utils.toggle_transparent_background, {silent = true})
vim.keymap.set('n','<C-l>', function ()
    vim.api.nvim_exec(':NERDTreeToggle',false)
end)

vim.keymap.set('n','<A-left>','<C-W>h',{})
vim.keymap.set('n','<A-down>','<C-W>j',{})
vim.keymap.set('n','<A-up>','<C-W>k',{})
vim.keymap.set('n','<A-right>','<C-W>l',{})

vim.keymap.set('i','<C-BS>','<C-w>',{})


-- dap maps
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

vim.keymap.set('i', '<C-j>', function ()
    if vim.fn['coc#float#has_scroll']() then
        vim.fn['coc#float#scroll'](1,1)
    end
end, {silent=true})

vim.keymap.set('i', '<C-k>', function ()
    if vim.fn['coc#float#has_scroll']() then
        vim.fn['coc#float#scroll'](0,1)
    end
end, {silent=true})

