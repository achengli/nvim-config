vim.cmd [[packadd packer.nvim]]

return require('packer').startup( function (use)
    use 'wbthomason/packer.nvim'

    -- themes and colorizing neovim
    use 'olivercederborg/poimandres.nvim'
    use 'embark-theme/vim'
    use 'crispybaccoon/aurora'
    use 'johnridesabike/vim-stella-maris'
    use 'dag/vim-fish'
    use 'humanoid-colors/vim-humanoid-colorscheme'
    use "rebelot/kanagawa.nvim"
    use 'Th3Whit3Wolf/space-nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'                                       -- neovim icons
    use 'vim-airline/vim-airline'                                      -- airline bar and themes
    use 'vim-airline/vim-airline-themes'
    use 'norcalli/nvim-colorizer.lua'                                  -- colorizer library
    use 'tjdevries/colorbuddy.nvim'                                    -- neosolarized dependency
    use 'svrana/neosolarized.nvim'                                     -- neosolarized theme
    use {'ray-x/starry.nvim', setup = function()
        vim.g.starry_italic_comments = true
        vim.g.starry_italic_functions = true
        vim.g.starry_contrast = true
        vim.g.starry_disable_background = true
    end}

    -- Neovim dev utilities (NERDTree, js-prettier)
    use 'onsails/lspkind.nvim'                                         -- neovim lsp symbols
    use 'folke/lsp-colors.nvim'                                        -- neovim lsp colors
    use 'mfussenegger/nvim-dap'                                        -- dap (debug adapter protocol)
    use 'mfussenegger/nvim-dap-python'
    use 'nvim-lua/plenary.nvim'                                        -- telescope dependencies
    use 'nvim-telescope/telescope.nvim'                                -- neovim telescope (command completion)
    use 'nvim-telescope/telescope-file-browser.nvim'                   -- telescope dependency
    use 'https://github.com/ctrlpvim/ctrlp.vim.git'                    -- clipboard connection
    use 'maxmellon/vim-jsx-pretty'                                     -- javascript xml notation prettier
    use 'mattn/emmet-vim'                                              -- emmet neovim for hmtl completion
    use 'nvim-treesitter/nvim-treesitter'                              -- treesitter (autocompletion)
    use {'puremourning/vimspector',                                    -- debugger vimspector
        cmd = {'VimspectorInstall','VimspectorUpdate'},fn = {'vimspector#Launch()',
            'vimspector#ToggleBreakpoint',config = function()
                require('config.vimspector').setup()
            end,}
    }
    use {'sagi-z/vimspectorpy', { fn= {"vimspectorpy#update()"}}}

    -- Coc neovim
    use {'neoclide/coc.nvim', branch = 'release'}                     -- coc neovim lsp servers

    -- Programming languages support
    use 'ollykel/v-vim'                                                 -- V lang support.
    use 'dart-lang/dart-vim-plugin'
    use {'https://github.com/jalvesaq/Nvim-R.git', ft = {'R'}}         -- R syntax completion
    use {'fatih/vim-go', cmd = ':GoUpdateBinaries'}                    -- golang formating
    use 'yuezk/vim-js'                                                 -- javascript code formating and syntax hightlighting
    use 'HerringtonDarkholme/yats.vim'                                 -- typescript code completion and syntax formating.


    use 'jose-elias-alvarez/null-ls.nvim'                              -- dependency for eslint
    use 'neovim/nvim-lspconfig'                                        -- dependency for null-ls
    use 'MunifTanjim/eslint.nvim'
    use 'MunifTanjim/nui.nvim'
    use 'tranvansang/octave.vim'                                       -- neovim octave syntax
end)


