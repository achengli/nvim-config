" Move windows (split panes) Switching them.
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" Move between panes (go to left or right one for example).
nnoremap <A-left>	<C-w>h
nnoremap <A-down>	<C-w>j
nnoremap <A-up>	    <C-w>k
nnoremap <A-right>	<C-w>l

" Commenting parts of code
augroup commenting_blocks_of_code
    autocmd!
    autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
    autocmd FileType rust,javascriptreact,typescriptreact,javascript,typescript let b:comment_leader = '// '
    autocmd FileType sh,ruby,python,octave let b:comment_leader = '## '
    autocmd FileType r,conf,fstab,sh let b:comment_leader = '# '
    autocmd FileType tex let b:comment_leader = '% '
    autocmd FileType vim let b:comment_leader = '" '
    autocmd FileType lua let b:comment_leader = '-- '
    autocmd FileType elisp,clisp let b:comment_leader = ';; '
augroup END
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>


