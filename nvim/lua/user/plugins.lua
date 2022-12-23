local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)

  use { "wbthomason/packer.nvim" }

  use { "JoosepAlviste/nvim-ts-context-commentstring" }
  use { "RRethy/nvim-treesitter-endwise" }
  use { "akinsho/bufferline.nvim" }
  use { "akinsho/toggleterm.nvim" }
  use { "kyazdani42/nvim-tree.lua" }
  use { "kyazdani42/nvim-web-devicons" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "moll/vim-bbye" }
  use { "numToStr/Comment.nvim" }
  use { "nvim-lua/plenary.nvim" }
  use { "nvim-lualine/lualine.nvim" }
  use { "tpope/vim-fugitive" }
  use { "vim-ruby/vim-ruby" }
  use { "windwp/nvim-autopairs" }

  -- Colorschemes
  use { "junegunn/seoul256.vim" }

  -- cmp plugins
  use { "hrsh7th/cmp-buffer"}
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-nvim-lua" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/nvim-cmp" }

  -- LSP
  use { "jose-elias-alvarez/null-ls.nvim" }
  use { "neovim/nvim-lspconfig" }
  use { "prabirshrestha/vim-lsp" }
  use { "williamboman/nvim-lsp-installer" }

  use { "junegunn/fzf", {['do'] = vim.fn['fzf#install']} }
  use { "junegunn/fzf.vim" }

  -- Treesitter
  use { "nvim-treesitter/nvim-treesitter" }

  -- Git
  use { "lewis6991/gitsigns.nvim" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)