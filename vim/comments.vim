
let g:comments_header = { 'c' : {'line': "//", 'block': ["/*", "*/"]},'javascript' : {'line': "//", 'block': ["/*", "*/"]},'typescript' : {'line': "//", 'block': ["/*", "*/"]}, 'maxima': {'block': ["/*","*/"]}}

function! comments#comment_line(whichline='.')
  let l = getline(a:whichline)
  if l =~ '^' . g:comments_header[&filetype].line
    call setline(line(a:whichline), substitute(l, g:comments_header[&filetype].line . ' ' . l))
    return g:comments_header[&filetype].line . ' ' . l
  endif
  return 
endfunc

function! comments#comment_block(from='.', to='.')
  " to be continued
endfunc
