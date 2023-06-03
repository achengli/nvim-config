local utils = {}
vim.has = require'vimcompletions'.has
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

--- Configuring toggle transparency in vim
--- --
--- Changes the transparency doing the current theme background transparent.
--- To change it, the function converts the background to a dark color due
--- The color is reversed again.
vim.t.is_transparent = false
function utils.toggle_transparent_background()
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

return utils
