-- Bootstrap Packer

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Load our plugins

return require('packer').startup(function()
  use { 'wbthomason/packer.nvim' }

  -- Visuals

  use { 'shaunsingh/nord.nvim' }
  use { 'hoob3rt/lualine.nvim' }
  use { 'simondrake/tokyodark.nvim' }
  use { 'navarasu/onedark.nvim' }
  use { 'norcalli/nvim-colorizer.lua' }
  use { "npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"} }
  use { 'folke/tokyonight.nvim' }
  use { 'projekt0n/github-nvim-theme' }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'nvim-treesitter/playground' }

  use { 'glepnir/dashboard-nvim' }

  -- Tools

  use { 'farmergreg/vim-lastplace' }

  use { 'RRethy/nvim-treesitter-textsubjects',
    config = function()
      require("nvim-treesitter.configs").setup {
        textsubjects = {
          enable = true,
          keymaps = {
            ['.'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
          }
        }
      }
    end
  }

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- Use default configuration
      }
    end
  }

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- Use default configuration
      }
    end
  }

  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/nvim-compe' }
  --use { 'onsails/lspkind-nvim' }

  use {
    'nvim-telescope/telescope.nvim', requires = {
       {'nvim-lua/popup.nvim'},
       {'nvim-lua/plenary.nvim'}
    }
  }

  -- Git

  --use { 'airblade/vim-gitgutter' }
  --use { 'tpope/vim-fugitive' }
  --use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  
  -- Classics

  use { 'tpope/vim-surround' }

  -- Go

  use { 'ray-x/go.nvim' }

  -- Experiments

  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup({
        window = {
          width = 1,
          height = 1,
        },
        plugins = {
          kitty = {
            enabled = true,
            font = "+3",
          }
        }
      })
    end
  }

  use {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup {
        context=0,
        expand = {"method", "function"}
      }
    end
  }
end)

