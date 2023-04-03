vim.g.lightline = {
    colorscheme = 'transparent',
    active = {
        left = {{'mode','paste'},
            {'cocstatus', 'readonly','filename','modified'}}
    },
    component_function = {
        cocstatus = "coc#status"
    }
}

if false then
    vim.fn['StatusDiagnostic'] = function ()
        vim.g.info = vim.fn['get'](vim.g.coc_diagnostic_info,
            'coc_diagnostic_info')
        if vim.fn['empty'](vim.g.info) then
            return ''
        end

        vim.g.msgs = {}
        if vim.fn['get'](vim.g.info,'error') then
            vim.call(vim.fn['add'],vim.g.msgs,'E' ..
                vim.g.info.error)
        end

        if vim.fn['get'](vim.g.info, 'warning') then
            vim.call(vim.fn['add'],'W' .. vim.g.info.warning)
        end
        return table.concat(vim.g.msgs,' ') .. ' ' ..
            vim.g.coc_status
    end
end
