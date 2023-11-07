local status, packer = pcall(require, 'packer')
if (not status) then
    print('Packer is not installed')
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup( function (use)
    use 'wbthomason/packer.nvim' -- Packer

    -- nvim theming
    use 'kyazdani42/nvim-web-devicons'
    use 'norcalli/nvim-colorizer.lua'
    use 'tjdevries/colorbuddy.nvim'
    use {
        'svrana/neosolarized.nvim',
        requires = {'tjdevries/colorbuddy.nvim'}
    }
    use 'nvim-lualine/lualine.nvim' -- Status line
    use 'akinsho/nvim-bufferline.lua'
    use 'nvim-lua/plenary.nvim' -- common utilities
    use 'onsails/lspkind-nvim'
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    use 'hrsh7th/nvim-cmp' -- Completion

    -- DAP support
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'

    -- Telescope
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

    use 'https://github.com/ctrlpvim/ctrlp.vim.git'
    use 'mattn/emmet-vim'
    use 'nvim-treesitter/nvim-treesitter'

    -- Programming languages support
    use 'dag/vim-fish'
    use 'tranvansang/octave.vim'
    use {'numToStr/Comment.nvim',
        requires = {
            'JoosepAlviste/nvim-ts-context-commentstring'
        }
    }
    use({
        'iamcco/markdown-preview.nvim',
        run = function() vim.fn['mkdp#util#install']() end,
    })

    -- nvim LSP configuration
    use 'neovim/nvim-lspconfig'
    use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
end)


