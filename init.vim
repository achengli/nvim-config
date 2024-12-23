source $HOME/.config/nvim/vim/util.vim

for file in ['opt.vim', 'plug/init.vim', 'map.vim', 'lsp.vim', 'conf.vim']
  call util#source(file)
endfor

source $HOME/.config/nvim/vim/color/corporation.vim

