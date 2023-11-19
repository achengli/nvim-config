local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'

vim.api.nvim_set_hl(0, "Pmenu", { bg = "None", fg='#f3e8e8', ctermbg="None", italic=true})

local function formatForTailwindCSS(entry, vim_item)
    if vim_item.kind == 'Color' and entry.completion_item.documentation then
        local _, _, r, g, b = string.find(entry.completion_item.documentation, '^rgb%((%d+), (%d+), (%d+)')
        if r then
            local color = string.format('%02x', r) .. string.format('%02x', g) .. string.format('%02x', b)
            local group = 'Tw_' .. color
            if vim.fn.hlID(group) < 1 then
                vim.api.nvim_set_hl(0, group, { fg = '#' .. color })
            end
            vim_item.kind = "●"
            vim_item.kind_hl_group = group
            return vim_item
        end
    end
    vim_item.kind = lspkind.symbolic(vim_item.kind) and lspkind.symbolic(vim_item.kind) or vim_item.kind
    return vim_item
end

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.scroll_docs(-4),
        ['<C-j>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'luasnip'},
    }),
    formatting = {
        format = lspkind.cmp_format({
            maxwidth = 50,
            before = function(entry, vim_item)
                vim_item = formatForTailwindCSS(entry, vim_item)
                return vim_item
            end
        })
    },
    window = {
        completion = {
            winhighlight = 'Normal:Pmenu,FloatBorder:Normal,CursorLine:PmenuSel,Search:None',
            border = 'rounded',
            side_padding = 1,
            col_offset = -3,
        },
        documentation = {
            winhighlight = 'Normal:Pmenu,FloatBorder:Normal,CursorLine:PmenuSel,Search:None',
            border = 'rounded',
            side_padding = 1,
            col_offset = -3,
        },
    }
})

vim.cmd [[
set completeopt=menuone,noinsert,noselect
highlight! default link CmpItemKind CmpItemMenuDefault
]]

