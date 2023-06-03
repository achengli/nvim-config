require'config'
require'plugins'
require'maps'
require'startup'

-- prettier formating for new javascript files
local aucommands = vim.api.nvim_create_augroup('aucommands', {clear = false})
vim.api.nvim_create_autocmd('FileType', {
    pattern = {'*.js', '*.jsx', '*.ts','*.tsx'},
    group = aucommands,
    command = 'setlocal formatprg=prettier',
})

local commenting_blocks_of_code = vim.api.nvim_create_augroup('commenting_blocks_of_code', {clear = true})

vim.api.nvim_create_autocmd('FileType', {
    pattern = {'*.cpp','*.c','*.java','*.rs','*.ts','*.js','*.tsx','*.jsx'},
    group = commenting_blocks_of_code,
    callback = function ()
        vim.b.comment_leader = '// '
    end
})
vim.api.nvim_create_autocmd('FileType', {
    pattern = {'*.sh','*.py','*.m','*.r','*.R','fstab','*.conf'},
    group = commenting_blocks_of_code,
    callback = function ()
        vim.b.comment_leader = '# '
    end
})
