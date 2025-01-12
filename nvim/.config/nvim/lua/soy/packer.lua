-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- themes
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "rebelot/kanagawa.nvim" }
    use { "ellisonleao/gruvbox.nvim" }
    use { "marko-cerovac/material.nvim" }
    use { "nyoom-engineering/nyoom.nvim"}

    -- use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('nvim-treesitter/nvim-treesitter-context')

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    }

    use ( 'tpope/vim-commentary' ) -- For commenting using gcc & gc
    use ( 'theprimeagen/harpoon' ) -- For quick access to files
    use ( 'mbbill/undotree' ) -- For undo -> view logs
    use ( 'tpope/vim-fugitive' ) -- For git
    use ( 'mfussenegger/nvim-lint' ) -- For nvim-linter
    use ( 'karb94/neoscroll.nvim' ) -- For smooth scroll
    use ( 'stevearc/oil.nvim' ) -- for file name edits in vim mode

    -- For auto-save
    use({
        "okuuva/auto-save.nvim",
        config = function()
            require("auto-save").setup {
            }
        end,
    })

    -- For lazygit
    use({
        "kdheepak/lazygit.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })

    -- For git blame
    use { 'kessejones/git-blame-line.nvim' }

    -- For LSP setup
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- For formatting
    use { 'nvimtools/none-ls.nvim' }

end)
