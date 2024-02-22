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
