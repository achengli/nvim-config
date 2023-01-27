set nu rnu
set encoding=utf-8
syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set foldmethod=manual
 
let g:airline_theme='angr'
" buffer movement
noremap <silent> <tab> :if &modifiable && !&readonly && &modified <cr> :write<cr> :endif<cr>:bnext<cr>
noremap <silent> <s-tab> :if &modifiable && !&readonly && &modified <cr> :write<cr> :endif<cr>:bprevious<cr>
" Movement mappings for normal and insert mode.
noremap <C-Down> }
noremap <C-Up> {
noremap <C-Left> b
noremap <C-Right> e
noremap <C-a> ^
noremap <C-e> $

inoremap <C-Down> <esc>}i
inoremap <C-Up> <esc>{i
inoremap <C-Left> <esc>ba
inoremap <C-Right> <esc>ea
inoremap <C-a> <esc>^i
inoremap <C-e> <esc>$A

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'catppuccin/vim', {'as':'catppuccin'}
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/McSinyx/vim-octave.git',{'for':'octave'}
Plug 'https://github.com/jalvesaq/Nvim-R.git',{'for':'R'}
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'jceb/vim-orgmode'
call plug#end()

" React native formaters
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier

"para que el backspace funcione
set backspace=indent,eol,start
inoremap <C-BS> <C-W>
inoremap <C-h> <C-W>
inoremap <C-l> <C-W>

" Toggle transparent background
let t:is_transparent = 1
function! Toggle_transparent_background()
	if t:is_transparent == 0
		hi Normal guibg=#000000 ctermbg=black
		let t:is_transparent = 1
	else
		hi Normal guibg=NONE ctermbg=NONE
		let t:is_transparent = 0
	endif
endfunction
nnoremap <C-x><C-t> :call Toggle_transparent_background()<CR>

if !has('nvim')
    colorscheme catppuccin_latte
else
    colorscheme onedark
endif

let NERDTreeShowHidden=1

" This functionality allows you to comment a line with ,cc and uncomment with
" ,cu in normal mode

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
augroup ENDi
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Airline configuration
let g:airline_theme='night_owl'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '⮀ '
let g:airline#extensions#tabline#left_alt_sep='❱ '
let g:airline#extensions#tabline#right_sep = ' ⮂' 

let g:airline_left_sep = '⮀❱'
" let g:airline_left_alt_sep='❱ '
let g:airline_right_sep = '❰⮂'

hi Normal guibg=NONE ctermbg=NONE
