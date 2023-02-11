" basic vim configuration and also vim-plug 
source ~/.config/nvim/vimscript/config.vim

" Colorizer setup
lua require'colorizer'.setup()

" airline configuration
source ~/.config/nvim/vimscript/powerline.vim

" Some mappings
source ~/.config/nvim/vimscript/maps.vim
source ~/.config/nvim/vimscript/NERDTreeConfiguration.vim

" Coc and vimspector configuration
source ~/.config/nvim/vimscript/CocConfiguration.vim

luafile ~/.config/nvim/lua/init.lua
