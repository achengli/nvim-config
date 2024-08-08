source $HOME/.config/nvim/vim/util.vim

for file in ['opt.vim', 'plug/init.vim', 'map.vim', 'lsp.vim']
  call util#source(file)
endfor

colorscheme madrid

hi Normal guibg=none ctermbg=none |
hi NonText guibg=none
hi LineNr ctermbg=none guibg=none
hi LineNrBelow guibg=none
hi LineNrAbove guibg=none
hi StatusLine guibg=none guifg=White
