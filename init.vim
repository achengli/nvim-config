source $HOME/.config/nvim/vim/util.vim

for file in ['opt.vim', 'plug/init.vim', 'map.vim']
  call util#source(file)
endfor

augroup NoBackgroundDefault
  autocmd! ColorScheme * hi Normal guibg=none ctermbg=none | hi LineNr ctermbg=none guibg=none
augroup END

color modus_vivendi
