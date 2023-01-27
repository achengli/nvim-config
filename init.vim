" Vim configuration
set encoding=utf-8
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set foldmethod=manual
set mouse=a
set relativenumber
let &packpath = &runtimepath
set backupdir=~/.cache/vim
set nocompatible
set showmatch
set ignorecase
filetype plugin indent on
set clipboard=unnamedplus
set cursorline

call plug#begin()
    Plug 'folke/neodev.nvim'
    Plug 'preservim/NERDTree'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'projekt0n/github-nvim-theme'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'vim-airline/vim-airline'  
    Plug 'https://github.com/McSinyx/vim-octave.git',{'for':'octave'}
    Plug 'https://github.com/jalvesaq/Nvim-R.git',{'for':'R'}
    Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
    Plug 'yuezk/vim-js'
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'maxmellon/vim-jsx-pretty' 
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ryanoasis/vim-devicons'
    Plug 'bluz71/vim-nightfly-colors'
call plug#end()

" " Toggle transparent background
" let t:is_transparent = 1
" function! Toggle_transparent_background()
" 	if t:is_transparent == 0
" 		hi Normal guibg=#000000 ctermbg=black
" 		let t:is_transparent = 1
" 	else
" 		hi Normal guibg=NONE ctermbg=NONE
" 		let t:is_transparent = 0
" 	endif
" endfunction
" nnoremap <C-x><C-t> :call Toggle_transparent_background()<CR>
" nnoremap <C-l> :NERDTreeToggle <CR>
" 
" Airline configuration
let g:airline_theme='transparent'
" 
let g:airline#extensions#tabline#enabled = 1

" move split pages
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <A-left>   <C-w>h
nnoremap <A-down>   <C-w>j
nnoremap <A-up>     <C-w>k
nnoremap <A-right>  <C-w>l

let NERDTreeShowHidden=1
augroup commenting_blocks_of_code
    autocmd!
    autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
    autocmd FileType rust,javascriptreact,typescriptreact,javascript,typescript let b:comment_leader = '/// '
    autocmd FileType sh,ruby,python,octave let b:comment_leader = '## '
    autocmd FileType r,conf,fstab,sh let b:comment_leader = '# '
    autocmd FileType tex let b:comment_leader = '% '
    autocmd FileType vim let b:comment_leader = '" '
    autocmd FileType lua let b:comment_leader = '-- '
    autocmd FileType elisp,clisp let b:comment_leader = ';; '
augroup END
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


luafile ~/.config/nvim/lua/init.lua
