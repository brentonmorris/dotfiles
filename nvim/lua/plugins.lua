local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
end

-- vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'L3MON4D3/LuaSnip'
  use 'akinsho/nvim-bufferline.lua' -- tabs
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'lewis6991/gitsigns.nvim'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'norcalli/nvim-colorizer.lua'
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'williamboman/mason-lspconfig.nvim'
  use 'williamboman/mason.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
end)
