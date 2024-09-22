" control + backspace will remove the word behind the cursor.
imap <C-h> <C-w>
inoremap <C-BS> <C-w>

" hook function which reloads floating diagnostics message 
" when the cursor moves around diferent lines.
function! FloatingDiagnosticsHook()
  if exists('b:last_buffer_line') && b:last_buffer_line != line('.')
    lua vim.diagnostic.open_float()
  endif
  let b:last_buffer_line = line('.')
endfunc

" auto-command calls FloatingDiagnosticsHook when cursor moves
augroup DiagnosticFloat
  autocmd CursorMoved * silent! call FloatingDiagnosticsHook()
augroup END

" Command function use to convert latex buffer to pdf using
" pdflatex
function! Tex2Pdf()
  let full_path_name = expand("%:p")
  echom "executing"
  if &filetype =~ "plaintex"
    return
  else
    echom "converting from tex to pdf"
  endif

  try 
    exec ":silent! !pdflatex " . expand("%:p")
  catch
    echom "pdflatex command raise an error"
    return
  endtry
  echom "done!"
endfunc

nnoremap <C-l> :call Tex2Pdf()<CR>
