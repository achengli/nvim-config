nnoremap ff <cmd>Telescope find_files<cr>
nnoremap \\ <cmd>Telescope buffers<cr>

lua << EOF
require'telescope'.setup{
}
EOF
