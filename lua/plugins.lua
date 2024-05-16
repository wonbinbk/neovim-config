return {
    {
        'folke/which-key.nvim',
        lazy = true,
    },
    -- nvim-treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = true,
    },
    {
        "junegunn/fzf", dir = "~/.fzf", build = "./install --all"
    },
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({})

        end
    },
    -- lualine for quick statusline display
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
    },
    {
        "tpope/vim-fugitive"
    },
    -- LSP-zero from VonHeikemen/lsp-zero.nvim
    -- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    -- {'L3MON4D3/LuaSnip'},
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },
    {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
    },
    -- begin theme
    {
        "sainnhe/gruvbox-material", priority = 1000 , config = true, opts = ...
    },
    {
        "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {},
    },
    { 
        "catppuccin/nvim", name = "catppuccin", priority = 1000 
    },
    {
        "rebelot/kanagawa.nvim", lazy = false, priority = 1000, opts = {},
    },
    { 'ribru17/bamboo.nvim', lazy = false, priority = 1000, config = function()
        require('bamboo').setup {
            -- optional configuration here
        } require('bamboo').load() end,
    },
    -- end theme
}
