-- Vim commentary plugin.
-- Envolves the selected area in visual mode by a comment.

table.keys = function(t)
    for k,v in pairs(t) do
        print(k,':', v)
    end
end

vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
    callback=function (p)
        if (p.file:match(".*%.[lua|vhdl|vhd|VHD|VHDL]$")) then
            vim.b.comment_regex = '-- %1'
        elseif (p.file:match('.*%.[c|cc|h|hpp|cpp]$')) then
            vim.b.comment_regex = '// %1'
        end
    end, pattern={'*.lua'}})

local function comment_line_encapsulation(l)
    assert(type(l) == 'string', 'Input value is not a string')
    return l:gsub('^(.+)$', vim.b.comment_regex)
end

vim.api.nvim_create_user_command('CommentLine', function()
    os.execute('sleep 0.01')
    local a = vim.fn['getpos']('<')
    local b = vim.fn['getpos']('>')
    local l = vim.api.nvim_buf_get_lines(0, a[1], b[1], true)
    comment_line_encapsulation(l)
end)

