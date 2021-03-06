local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  -- Self updating packer
  use 'wbthomason/packer.nvim'

  -- LSP Goodness
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use {
     'nvim-telescope/telescope.nvim',
     requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
   }

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/vim-vsnip'
  use "rafamadriz/friendly-snippets"
  use {
    "petertriho/cmp-git",
    requires = "nvim-lua/plenary.nvim"
  }


  -- Making code readable
  use 'nvim-treesitter/nvim-treesitter'
  use "lukas-reineke/indent-blankline.nvim"
  use "Pocco81/TrueZen.nvim"

  -- Making code pretty
  use 'rmehri01/onenord.nvim'

  -- Layout
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Little helpers
  use 'tpope/vim-fugitive'
  use 'wakatime/vim-wakatime'
  use {
    'ThePrimeagen/harpoon',
    requires = {'nvim-lua/plenary.nvim'}
  }
end)
