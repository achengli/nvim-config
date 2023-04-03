set encoding=utf-8
set fileencoding=utf-8
set cmdheight=1
set writebackup
syntax on
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set foldmethod=manual
set mouse=a
set relativenumber
set backupdir=~/.cache/vim
set nocompatible
set showmatch
set ignorecase
filetype plugin indent on
set clipboard=unnamedplus
set cursorline
set termguicolors
set winblend=0
set pumblend=5
set background=dark
let g:vimspector_enable_mappings='HUMAN'

augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
augroup END

let &packpath = &runtimepath

call plug#begin()
    " themes and colorizing neovim
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'EdenEast/nightfox.nvim'
    Plug 'bluz71/vim-nightfly-colors'                                   " nightfly theme 
    Plug 'elvessousa/sobrio'
    Plug 'ryanoasis/vim-devicons'                                       " neovim icons
    Plug 'vim-airline/vim-airline'                                      " airline bar and themes
    Plug 'vim-airline/vim-airline-themes'
    Plug 'projekt0n/github-nvim-theme'                                  " github themes 
    Plug 'norcalli/nvim-colorizer.lua'                                  " colorizer library for neovim
    Plug 'tjdevries/colorbuddy.nvim'                                    " neosolarized dependency
    Plug 'svrana/neosolarized.nvim'                                     " neosolarized theme

    " Neovim dev utilities (NERDTree, js-prettier)
    Plug 'nvim-lua/plenary.nvim'                                        " telescope dependencies
    Plug 'nvim-telescope/telescope.nvim'                                " neovim telescope (command completion)
    Plug 'nvim-telescope/telescope-file-browser.nvim'                   " telescope dependency
    Plug 'preservim/NERDTree'                                           " NERDTree 
    Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'                    " clipboard connection
    Plug 'maxmellon/vim-jsx-pretty'                                     " javascript xml notation prettier
    Plug 'mattn/emmet-vim'                                              " emmet neovim for hmtl completion
    Plug '89453728/maximaeval'                                          " maxima dynamic buffer evaluation
    Plug 'nvim-treesitter/nvim-treesitter'                              " treesitter (autocompletion)
    Plug 'puremourning/vimspector'                                      " debugger vimspector

    " Coc neovim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}                     " coc neovim lsp servers

    " Programming languages support
    Plug 'https://github.com/McSinyx/vim-octave.git', {'for': 'octave'} "octave syntax completion
    Plug 'https://github.com/jalvesaq/Nvim-R.git', {'for': 'R'}         " R syntax completion
    Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}                    " golang formating
    Plug 'yuezk/vim-js'                                                 " javascript code formating and syntax hightlighting
    Plug 'HerringtonDarkholme/yats.vim'                                 " typescript code completion and syntax formating.
    Plug 'luk400/vim-jukit'                                             " jupyter completion

    Plug 'jose-elias-alvarez/null-ls.nvim'                              " dependency for eslint
    Plug 'neovim/nvim-lspconfig'                                        " dependency for null-ls
    Plug 'MunifTanjim/eslint.nvim'
call plug#end()

augroup twig_ft
    au!
    autocmd BufNewFile,BufRead *.mac set syntax=maxima | set filetype=maxima
augroup END

let mapleader=','
