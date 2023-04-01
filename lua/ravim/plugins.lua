-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- PackerPlugins 
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    -- Telecope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Dashboard
    use {'goolord/alpha-nvim'}
    use {'nvim-tree/nvim-web-devicons'}

    -- Plugins

    -- LSP and CMP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}

    -- Treesitter and undotree
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use ('nvim-treesitter/playground')

    use ('mbbill/undotree')

    -- Github Integration
    use ('tpope/vim-fugitive')

    -- ColorSchemes
    use ('EdenEast/nightfox.nvim')
    use ('folke/tokyonight.nvim')

    use ('olimorris/onedarkpro.nvim')





  end)
