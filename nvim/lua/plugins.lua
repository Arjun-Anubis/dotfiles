local plugin_list = {

	-- Standard tpope vim plugins
	{ "tpope/vim-surround" },
	{ "tpope/vim-repeat" },
	{ "tpope/vim-commentary" },
	{ "tpope/vim-unimpaired" },
	{ "kshenoy/vim-signature" },

	-- My prefered theme: Nightfox by EdenEast
	{ "EdenEast/nightfox.nvim", lazy=false },


	-- Statusline: lualine, the bar at the bottom
	{
		"nvim-lualine/lualine.nvim",
		config = function () 
			require("lualine").setup(
				{
					options = { theme = "nightfox" } 
				}) 
		end
	},
	-- Telescope, the fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		cmd = "Telescope",
		config = function ()
			require("telescope").setup()
		end
	},

	-- Treesitter: Syntax parser and highlighter, 
	-- needs some parsers to be installed
	{
		"nvim-treesitter/nvim-treesitter",

		-- The build command is TSUpdate, TS stands for treesitter
		build = ":TSUpdate",


		-- Load when new file is opened
		event = { "BufReadPost", "BufNewFile" },

		config = function()
			require("nvim-treesitter.configs").setup( 
				{
				-- Other parsers can be installed using the command TS install
				ensure_installed = { "c", "lua", "python", "bash", "vim" },
				highlight = { enable = true, additional_vim_regex_highlighting = false },
				indent = { enable = true },
				})
		end
	},
}
return plugin_list
