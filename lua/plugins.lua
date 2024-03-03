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
	-- color schemes
	{ 
		"sainnhe/gruvbox-material", priority = 1000 , config = true, opts = ...
	},
	{
		"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
	}
}
