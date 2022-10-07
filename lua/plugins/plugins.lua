local fn = vim.fn
local cmd = vim.cmd

-- Automatically install packer
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

-- Autocommand syncing packages whenever this file is saved
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Plugins
return packer.startup(function(use)
    use 'wbthomason/packer.nvim'            -- Packer itself
    -- Colourschemes
    use 'EdenEast/nightfox.nvim'
    use 'romgrk/doom-one.vim'
    use 'Mofiqul/dracula.nvim'
    use 'navarasu/onedark.nvim'
    -- Dependencies
    use 'kyazdani42/nvim-web-devicons'
    use 'roxma/nvim-yarp'
    use 'roxma/vim-hug-neovim-rpc'
    use 'romgrk/fzy-lua-native'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    -- Utils
    use 'terryma/vim-multiple-cursors'      -- Multiple Cursors
	use 'lervag/vimtex'						-- Vimtex
    use 'jiangmiao/auto-pairs'              -- Add closing pair
    use {'akinsho/toggleterm.nvim',         -- Terminal
        tag = '*', config = function() require "plugins.config.toggleterm" end}
    use {'Pocco81/auto-save.nvim',          -- Autosave
        config = function() require "plugins.config.auto-save" end}
    use {'norcalli/nvim-colorizer.lua',     -- Colourize hex colours
        config = function() require 'colorizer'.setup() end}
    use {'gelguy/wilder.nvim',              -- Wildmenu
        requires = {'roxma/nvim-yarp', 'roxma/vim-hug-neovim-rpc', 'romgrk/fzy-lua-native', 'kyazdani42/nvim-web-devicons'},
        config = function() require "plugins.config.wilder" end}
    use {'kyazdani42/nvim-tree.lua',        -- File Browser
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function() require "plugins.config.nvim-tree" end}
    use {'iamcco/markdown-preview.nvim',
        run = 'cd app && yarn install'}
    use {'rcarriga/nvim-notify',            -- Notifications
        config = function() require "plugins.config.notify" end}
    use {'Darazaki/indent-o-matic',         -- Auto indentation
        config = function() require "plugins.config.indent-o-matic" end}
	use {'williamboman/nvim-lsp-installer',	-- Adds the :LspInstall command
		config = function() require("nvim-lsp-installer").setup {} end}
    use 'neovim/nvim-lspconfig'		        -- LSP config
	use 'onsails/lspkind.nvim'				-- Stylize menu
	use 'hrsh7th/nvim-cmp'					-- Autocompletion Plugin
	use 'hrsh7th/cmp-nvim-lsp'				-- Lsp source for cmp
	use 'saadparwaiz1/cmp_luasnip'			-- Snippets source for cmp
	use 'L3MON4D3/LuaSnip'					-- Snippets plugin
	use 'lukas-reineke/indent-blankline.nvim'-- Indent blacklines
	use {'nvim-telescope/telescope.nvim',	-- Telescope file search
		tag = '0.1.0', requires = 'nvim-lua/plenary.nvim',
		config = function () require "plugins.config.telescope" end}
	use {'feline-nvim/feline.nvim',
		config = function () require "plugins.config.feline" end}

    -- Autosetup config after cloning packer.nivm
    if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
