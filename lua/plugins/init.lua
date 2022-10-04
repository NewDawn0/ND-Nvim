return require'packer'.startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colourschemes
    use 'navarasu/onedark.nvim'         -- Onedark
    use 'Mofiqul/dracula.nvim'          -- Dracula
    use 'EdenEast/nightfox.nvim'        -- Nord
    use 'romgrk/doom-one.vim'           -- Doom One
    
    -- Utils
    use 'kyazdani42/nvim-web-devicons'  -- Icons
    use 'jiangmiao/auto-pairs'          -- Auto closing pairs
    use 'roxma/nvim-yarp'               -- Dependencie for wilder
    use 'roxma/vim-hug-neovim-rpc'      -- Dependencie for wilder
    use 'romgrk/fzy-lua-native'         -- Dependencie for wilder
    use {                               -- Show colours
        'norcalli/nvim-colorizer.lua',
        config = function()
            require 'colorizer'.setup()
        end,
    }
    use {                               -- File explorer
        'kyazdani42/nvim-tree.lua',
        requires = {'kyazdani42/nvim-web-devicons'},
        config = function()
            require "plugins.config.nvim-tree"
        end,
    }
    use {                               -- Wildmenu
        'gelguy/wilder.nvim',
        requires = {
            'roxma/nvim-yarp',
            'roxma/vim-hug-neovim-rpc'
        },
        config = function()
            require "plugins.config.wilder"
        end,
    }
end)
