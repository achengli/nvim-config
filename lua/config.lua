vim.g.current_theme = 'tempus_night'
vim.g.scientific_theme = 'tempus_totus'

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.title = true
vim.opt.cmdheight = 1
vim.opt.writebackup = true
vim.opt.syntax = 'on'
vim.opt.hlsearch = true
vim.opt.shell = 'bash'

vim.opt.tabstop = 4
vim.opt.wrap = true
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.foldmethod = 'manual'
vim.opt.mouse = 'a'
vim.opt.relativenumber = true
vim.opt.backupdir = os.getenv('HOME') .. '/.cache/vim'
vim.opt.wildignore:append {'*/node_modules/*'}

vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.pumblend = 5
vim.opt.background = 'dark'
vim.g.vimspector_enable_mappings = 'HUMAN'

local highlight_yank = vim.api.nvim_create_augroup('highlight_yank',{clear = false})
vim.api.nvim_create_autocmd({'TextYankPost'},{callback = function ()
    vim.highlight.on_yank({higroup = 'Visual',timeout=100})
end})

-- vim.opt.packpath = vim.opt.runtimepath

vim.api.nvim_create_autocmd({'BufNewFile','BufRead'},{pattern={'*.mac'},
    callback = function ()
        vim.bo.filetype = 'maxima'
    end})

vim.api.nvim_create_autocmd({'BufRead','BufNewFile'}, {pattern='*.th',
    callback = function()
        vim.bo.filetype = 'lua'
    end})

vim.api.nvim_create_autocmd({'BufNewFile','BufRead'},{pattern={'*.m'},
    callback = function ()
        vim.bo.filetype = 'octave'
    end})

vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {pattern={'*.m', '*.jl', '*.r', '*.el', '*.lisp', '*.mac'},
    callback = function ()
        if (vim.g.scientific_theme_loaded) then
            return
        end
        vim.g.scientific_theme_loaded = true
        local inp = vim.fn['input']("Scientific theme? [y/N] ")
        if (inp:sub(1,1) == 'y') then
            vim.cmd('color ' .. vim.g.scientific_theme)
        end
    end})


vim.g.mapleader = ','

-- set off paste mode after leaving from insert mode
vim.api.nvim_create_autocmd('InsertLeave',{
    pattern = '*',command = 'set nopaste'})


-- DAP configuration
local dap = require('dap')
local dap_python = require'dap-python'
dap_python.setup('/usr/bin/python3')


-- Changing the background color as the theme too
local toggle_transparent_background = require'utils'.toggle_transparent_background
vim.api.nvim_exec('silent! color ' .. vim.g.current_theme,false)
toggle_transparent_background()

-- lsp configuration
local lspconfig = require'lspconfig'
local on_attach_custom = function(client, bufnr)
    local function buf_set_option(name, value)
        vim.api.nvim_buf_set_option(bufnr, name, value)
    end

    client.resolved_capabilities.document_formatting = false
end

lspconfig.r_language_server.setup{}

vim.g.dart_style_guide = 4
vim.g.dart_html_in_string = true
