augroup aucommands
    au FileType *.js, *.jsx, *.tsx, *.ts :setlocal formatprg=prettier
augroup END

source config.vim
source plugins.vim
source maps.vim
source startup.vim

backspa
