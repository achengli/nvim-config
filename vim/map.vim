" control + backspace will remove the word behind the cursor.
imap <C-h> <C-w>
inoremap <C-BS> <C-w>

" hook function which reloads floating diagnostics message 
" when the cursor moves around diferent lines.
function! FloatingDiagnosticsHook()
  if exists('b:last_buffer_line')
    if (b:last_buffer_line != line('.'))
      lua vim.diagnostic.open_float()
      let b:last_buffer_line = line('.')
    endif
  else
    let b:last_buffer_line = line('.')
  endif
endfunc

" auto-command calls FloatingDiagnosticsHook when cursor moves
augroup DiagnosticFloat
  autocmd CursorMoved * silent! call FloatingDiagnosticsHook()
augroup END
