vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.syntax = 'on'
vim.opt.hlsearch = true
vim.opt.shell = 'bash'

vim.wo.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.wrap = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.foldmethod = 'manual'

vim.opt.mouse = 'a'
vim.opt.mousemoveevent = true
vim.opt.cursorline = true
vim.opt.clipboard = 'unnamedplus'

vim.opt.writebackup = true
vim.opt.backupdir = os.getenv('HOME') .. '/.cache/vim'
vim.opt.wildignore:append {'*/node_modules/*'}

vim.opt.title = true
vim.opt.cmdheight = 1
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.g.vimspector_enable_mappings = 'HUMAN'
vim.g.mapleader = ' '

