local demo = vim.api.nvim_create_augroup('demo',{})
vim.api.nvim_create_autocmd({"BufRead","BufNewFile"},
    {pattern = {".mac",".mxm"},
    callback = function ()
        vim.bo.syntax = "maxima"
        vim.bo.filetype = "maxima"
    end})

local lines = vim.api.nvim_buf_get_lines(0,2,5,false)
vim.api.nvim_buf_set_lines(0,10,10,false,"")
vim.api.nvim_win_get_cursor(01212)
vim.api.nvim_buf_set_lines(0)
