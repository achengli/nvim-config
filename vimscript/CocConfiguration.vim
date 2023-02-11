" Using themes for coc-Bar
let g:ligthline = {
            \ 'colorscheme' : 'transparent',
            \ 'active': {
            \   'left' : [ ['mode', 'paste'],
            \           [ 'cocstatus', 'readonly' , 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'cocstatus' : 'coc#status'
            \ },
            \ }

" Diagnose status during python debug (debugpy) using viminspector.
function! StatusDiagnostic()
    let info = get(b:, 'coc_diagnostic_info', {})
    if empty(info) | return '' | endif
    let msgs = []
    if get(info,'error', 0)
        call add(msgs, 'E' . info['error'])
    endif
    if get(info, 'warning',0)
        call add(msgs, 'W' . info['warning'])
    endif
    return join(msgs,' ') . ' ' . get(g:,'coc_status','')
endfunction
