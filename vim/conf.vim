function! VHDLFormat()
  set tabstop=4
  set shiftwidth=4
endfunction

augroup FileExtensionsGroup
  au BufRead,BufNew,BufNewFile *.mac :silent! set filetype=maxima
  au BufRead,BufNew,BufNewFile *.m :silent! set filetype=octave
  au BufRead,BufNew,BufNewFile *.vhd :silent! call VHDLFormat()
augroup END

