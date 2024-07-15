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
            require("fzf-lua").setup({
                actions = {
                    files = {
                        -- open selected files in buffers
                        -- the default is `file_edit_or_qf` which sending multiple files to the quickfix list
                        ["default"] = require("fzf-lua.actions").file_edit,
                    }
                }
            })
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
    { 'RaafatTurki/hex.nvim' },
    -- LSP-zero from VonHeikemen/lsp-zero.nvim
    -- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    { 'neovim/nvim-lspconfig' },
    -- { 'ray-x/guihua.lua', build = "cd lua/fzy && make"},
    -- { 'ray-x/navigator.lua' },
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
    {
      "folke/zen-mode.nvim",
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- from : https://github.com/folke/zen-mode.nvim
      }
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
    { 'projekt0n/github-nvim-theme' },
    { 'HoNamDuong/hybrid.nvim' }
    -- end theme
}
