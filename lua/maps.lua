vim.has = require'vimcompletions'.has


for _,e in pairs({'n','v'}) do
    vim.keymap.set(e,'<C-Down>','}',{remap = true, silent = true,desc = "Move down in a buffer jumping paragraphs"})
    vim.keymap.set(e,'<C-Up>','{',{remap = true, silent = true, desc = "Move up in a buffer jumping paragraphs"})
    vim.keymap.set(e,'<C-Left>','b',{remap = true, silent = true, desc = "Move left jumping words"})
    vim.keymap.set(e,'<C-Right>','e',{remap = true, silent = true, desc = "Move right jumping words"})
    vim.keymap.set(e,'<C-a>','^',{remap = true, silent = true, desc = "Go to the end of line"})
    vim.keymap.set(e,'<C-e>','$',{remap = true, silent = true, desc = "Go to beginning of line"})
end

vim.keymap.set('i','<C-Down>','<esc>}i',{remap = true, silent = true, })
vim.keymap.set('i','<C-Up>','<esc>{i',{remap = true, silent = true})
vim.keymap.set('i','<C-Left>','<esc>ba',{remap = true, silent = true})
vim.keymap.set('i','<C-Right>','<esc>ea',{remap = true, silent = true})
vim.keymap.set('i','<C-a>','<esc>^i',{remap = true, silent = true})
vim.keymap.set('i','<C-e>','<esc>$A',{remap = true, silent = true})

-- Control + backspace == remove word back.
vim.opt.backspace={'indent','eol','start'}
vim.keymap.set('i','<C-h>', '<C-w>', {silent = true, remap = true})

vim.g.NERDTreeShowHidden = 1

-- Rotate between buffers using Alt-tab to rotate right and Shift-tab 
-- to rotate left.
vim.keymap.set('n','<A-tab>', function ()
    vim.cmd([[
    if &modifiable && !&readonly && &modified
        write
    endif
    bnext]], false)
end, {silent = true})

vim.keymap.set('n','<S-tab>', function ()
    vim.cmd([[
    if &modifiable && !&readonly && &modified
        write
    endif
    bprevious]], false)
end, {silent = true})



-- Configuring toggle transparency in vim
vim.t.is_transparent = false
local function toggle_transparent_background()
    if vim.t.is_transparent then
        if vim.has(7) then
            vim.api.nvim_set_hl(0,'Normal',{ctermbg = 'black', bg='black'})
        else
            --vim.cmd([[highlight Normal guibg=#000000 ctermbg=black]])
            vim.api.nvim_exec('silent! colorscheme ' .. vim.api.nvim_exec('silent! colorscheme',false),false)
        end
        vim.t.is_transparent = false
    else
        if vim.has(7) then
            vim.api.nvim_set_hl(0,'Normal',{ctermbg = 'NONE', bg='NONE'})
        else
            vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])
        end
        vim.t.is_transparent = true
    end
end

-- change background color to transparent background by default and select the theme
vim.api.nvim_exec('silent! color OceanicNext',false)
toggle_transparent_background()

vim.keymap.set('n','<C-x><C-t>',toggle_transparent_background, {silent = true})
vim.keymap.set('n','<C-l>', function ()
    vim.api.nvim_exec(':NERDTreeToggle',false)
end)

vim.keymap.set('n','<A-h>','<C-W>H',{})
vim.keymap.set('n','<A-j>','<C-W>J',{})
vim.keymap.set('n','<A-k>','<C-W>K',{})
vim.keymap.set('n','<A-l>','<C-W>L',{})

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

-- toggle the up and down commands in buffer (this is more intuitive for me)
vim.keymap.set({'n','v'}, 'j', function()
    if vim.api.nvim_win_get_cursor(0)[1] > 1 then
        vim.api.nvim_win_set_cursor(0, {vim.api.nvim_win_get_cursor(0)[1] - 1,vim.api.nvim_win_get_cursor(0)[2]})
    end
end, {silent=true})

vim.keymap.set({'n', 'v'}, 'k', function()
    if vim.api.nvim_win_get_cursor(0)[1] < vim.api.nvim_buf_line_count(0) then
        vim.api.nvim_win_set_cursor(0, {vim.api.nvim_win_get_cursor(0)[1] + 1, vim.api.nvim_win_get_cursor(0)[1]})
    end
end, {silent=true})
