local fn = vim.fn
local cmd = vim.cmd
-- Automatically install packer --
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	cmd([[packadd packer.nvim]])
end
-- Autocommand syncing packages whenever this file is saved --
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])
-- Use a protected call so we don't error out on first use --
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end
-- Have packer use a popup window --
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})
-- Plugins --
return packer.startup(function(use)
    use 'wbthomason/packer.nvim'            										-- Packer itself
    -- Colourschemes --
    use 'EdenEast/nightfox.nvim'													-- Nord colourscheme and others
    use 'romgrk/doom-one.vim'														-- Doom-one colourscheme
	use 'Shatur/neovim-ayu'															-- Ayu colourscheme
    use 'Mofiqul/dracula.nvim'														-- Dracula colourscheme
    use 'navarasu/onedark.nvim'														-- Onedark
	use 'folke/tokyonight.nvim' 													-- Tokyonight
	use 'Shadorain/shadotheme'														-- shadotheme
    -- Dependencies --
    use 'kyazdani42/nvim-web-devicons'												-- Icons
    use 'roxma/nvim-yarp'															-- Remote plugin framework
    use 'nvim-lua/plenary.nvim'														-- Functions library
    use 'nvim-lua/popup.nvim'														-- Popup api
    -- Utils --
	use 'rhysd/vim-grammarous'														-- Grammar checker
	use 'mattn/emmet-vim'															-- Emmet
    use 'terryma/vim-multiple-cursors'      										-- Multiple cursors
	use 'dstein64/vim-startuptime'													-- Measure startup time
	use 'mzlogin/vim-markdown-toc' 													-- Generate markdown table of contents
    use 'jiangmiao/auto-pairs'              										-- Add closing pair
	use 'lewis6991/impatient.nvim'													-- Speed up plugins
	use {'lervag/vimtex',															-- Vimtex
		config = function () vim.cmd("so ~/.config/nvim/lua/plugins/config/vimtex.vim") end}
	use {'kylechui/nvim-surround',													-- Surround nvim
		tag = "*", config = function () require("nvim-surround").setup() end}
	use {'kazhala/close-buffers.nvim',												-- Better bufferclose
		config = function() require "plugins.config.close-buffers" end}
	use {'terrortylor/nvim-comment',												-- Comments
		config = function() require "plugins.config.comment" end}
    use {'akinsho/toggleterm.nvim',         										-- Terminal
        tag = '*', config = function() require "plugins.config.toggleterm" end}
    use {'Pocco81/auto-save.nvim',          										-- Autosave
        config = function() require "plugins.config.auto-save" end}
    use {'iamcco/markdown-preview.nvim',											-- Markdown preview
        run = 'cd app && yarn install'}
    use {'Darazaki/indent-o-matic',         										-- Auto indentation
        config = function() require "plugins.config.indent-o-matic" end}
    -- UI --
	-- use {'nvim-zh/colorful-winsep.nvim',											-- colourful winsep
	-- 	config = function() require "plugins.config.colourful-winsep" end}
	use 'frazrepo/vim-rainbow'														-- rainbow parentheses
	use 'mrjones2014/smart-splits.nvim'												-- Better window splits
	use {'goolord/alpha-nvim',														-- Dashboard}
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = function() require "plugins.config.alpha" end}
    use {'kyazdani42/nvim-tree.lua',        										-- File Browser
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require "plugins.config.nvim-tree" end}
	use {'lukas-reineke/indent-blankline.nvim',										-- Indent blacklines
		config = function() require "plugins.config.blankline" end,
		after = 'nvim-treesitter'}
	use {'feline-nvim/feline.nvim',													-- Statusline
		config = function() require "plugins.config.feline" end}
    use {'gelguy/wilder.nvim',              										-- Wildmenu
        requires = {'roxma/nvim-yarp', 'kyazdani42/nvim-web-devicons'},
        config = function() require "plugins.config.wilder" end}
	use {'norcalli/nvim-colorizer.lua',     										-- Colourize hex colours
		event = { "UIEnter" },
        config = function() require 'colorizer'.setup() end}
    use {'rcarriga/nvim-notify',            										-- Notifications
        config = function() require "plugins.config.notify" end}
	use { "lewis6991/gitsigns.nvim",												-- Git signs
    	event = "BufWinEnter", ft = "gitcommit",
    	config = function() require('gitsigns').setup() end}
	use {'nvim-telescope/telescope.nvim',											-- Telescope file search
		tag = '0.1.0', requires = 'nvim-lua/plenary.nvim',
		config = function() require "plugins.config.telescope" end}
	use {'akinsho/bufferline.nvim',													-- Buffer bar 
		tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons',
		config = function() require "plugins.config.bufferline" end}
	use {'stevearc/aerial.nvim',													-- Code outline for skimming and navigation
		config = function() require "plugins.config.aerial" end}
	-- Autocomplete --
	use {'williamboman/mason.nvim',													-- mason
		config = function() require "lsp-config.mason" end}
	use {'williamboman/mason-lspconfig.nvim',
		config = function() require "lsp-config.mason-lsp" end}
    use {'neovim/nvim-lspconfig',		    										-- LSP config
		config = function() require "lsp-config" end}
	use 'rafamadriz/friendly-snippets'												-- friendly snippets
	use 'L3MON4D3/LuaSnip'															-- Snippets plugin
	use {'saadparwaiz1/cmp_luasnip',												-- CMP sources
		after = "LuaSnip"}
	use {'hrsh7th/cmp-nvim-lua',													-- CMP sources
    	after = "cmp_luasnip"}
  	use {'hrsh7th/cmp-buffer',														-- CMP sources
    	after = "cmp-nvim-lsp"}
  	use {'hrsh7th/cmp-path',														-- CMP sources
    	after = "cmp-buffer"}
	use 'hrsh7th/cmp-nvim-lsp'														-- LSP source for nvim-cmp
	use 'hrsh7th/cmp-nvim-lsp-signature-help'										-- Help menu
	use {'hrsh7th/nvim-cmp',														-- Autocompletion Plugin
		after = "friendly-snippets",
		config = function() require "lsp-config.nvim-cmp" end}
	use {'nvim-treesitter/nvim-treesitter', 										-- Treesitter language parsing
		config = function() require "plugins.config.treesitter" end,
		run = ':TSUpdate', event = "BufRead"}
    -- Autosetup config after cloning packer.nivm --
    if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
