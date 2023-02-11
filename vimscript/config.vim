set encoding=UTF-8
syntax on
set smartindent
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

let &packpath = &runtimepath

call plug#begin()
    " themes and colorizing neovim
    Plug 'bluz71/vim-nightfly-colors'                                   " nightfly theme 
    Plug 'norcalli/nvim-colorizer.lua'                                  " better syntax colorizer
    Plug 'ryanoasis/vim-devicons'                                       " neovim icons
    Plug 'vim-airline/vim-airline'                                      " airline bar and themes
    Plug 'vim-airline/vim-airline-themes'
    Plug 'projekt0n/github-nvim-theme'                                  " github themes 

    " Neovim dev utilities (NERDTree, js-prettier)
    Plug 'preservim/NERDTree'                                           " NERDTree 
    Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'                    " clipboard connection
    Plug 'maxmellon/vim-jsx-pretty'                                     " javascript xml notation prettier

    " Coc neovim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}                     " coc neovim lsp servers

    " Programming anguages support
    Plug 'https://github.com/McSinyx/vim-octave.git', {'for': 'octave'} "octave syntax completion
    Plug 'https://github.com/jalvesaq/Nvim-R.git', {'for': 'R'}         " R syntax completion
    Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}                    " golang formating
    Plug 'yuezk/vim-js'                                                 " javascript code formating and syntax hightlighting
    Plug 'HerringtonDarkholme/yats.vim'                                 " typescript code completion and syntax formating.
call plug#end()
