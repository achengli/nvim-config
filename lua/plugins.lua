vim.cmd [[packadd packer.nvim]]

return require('packer').startup( function (use)
    -- themes and colorizing neovim
    use 'kyazdani42/nvim-web-devicons'
    use 'EdenEast/nightfox.nvim'
    use 'bluz71/vim-nightfly-colors'                                   -- nightfly theme 
    use 'elvessousa/sobrio'
    use 'ryanoasis/vim-devicons'                                       -- neovim icons
    use 'vim-airline/vim-airline'                                      -- airline bar and themes
    use 'vim-airline/vim-airline-themes'
    use 'projekt0n/github-nvim-theme'                                  -- github themes 
    use 'norcalli/nvim-colorizer.lua'                                  -- colorizer library for neovim
    use 'tjdevries/colorbuddy.nvim'                                    -- neosolarized dependency
    use 'svrana/neosolarized.nvim'                                     -- neosolarized theme

    -- Neovim dev utilities (NERDTree, js-prettier)
    use 'nvim-lua/plenary.nvim'                                        -- telescope dependencies
    use 'nvim-telescope/telescope.nvim'                                -- neovim telescope (command completion)
    use 'nvim-telescope/telescope-file-browser.nvim'                   -- telescope dependency
    use 'preservim/NERDTree'                                           -- NERDTree 
    use 'https://github.com/ctrlpvim/ctrlp.vim.git'                    -- clipboard connection
    use 'maxmellon/vim-jsx-pretty'                                     -- javascript xml notation prettier
    use 'mattn/emmet-vim'                                              -- emmet neovim for hmtl completion
    use '89453728/maximaeval'                                          -- maxima dynamic buffer evaluation
    use 'nvim-treesitter/nvim-treesitter'                              -- treesitter (autocompletion)
    use 'puremourning/vimspector'                                      -- debugger vimspector

    -- Coc neovim
    use {'neoclide/coc.nvim', branch = 'release'}                     -- coc neovim lsp servers

    -- Programming languages support
    use {'https://github.com/McSinyx/vim-octave.git', ft = {'octave'}} --octave syntax completion
    use {'https://github.com/jalvesaq/Nvim-R.git', ft = {'R'}}         -- R syntax completion
    use {'fatih/vim-go', cmd = ':GoUpdateBinaries'}                    -- golang formating
    use 'yuezk/vim-js'                                                 -- javascript code formating and syntax hightlighting
    use 'HerringtonDarkholme/yats.vim'                                 -- typescript code completion and syntax formating.
    use 'luk400/vim-jukit'                                             -- jupyter completion

    use 'jose-elias-alvarez/null-ls.nvim'                              -- dependency for eslint
    use 'neovim/nvim-lspconfig'                                        -- dependency for null-ls
    use 'MunifTanjim/eslint.nvim'
    use 'MunifTanjim/nui.nvim'
    use 'dpayne/CodeGPT.nvim'
end)
