local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  "nvim-lua/plenary.nvim",
  "neovim/nvim-lspconfig",
  "BurntSushi/ripgrep",
  "onsails/lspkind-nvim",
  "nvim-tree/nvim-web-devicons",
  "windwp/nvim-autopairs",
  "tpope/vim-commentary",
  "L3MON4D3/LuaSnip",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-nvim-lsp",
  "github/copilot.vim",
  -- "hrsh7th/cmp-cmdline",
  -- "hrsh7th/cmp-path",
  "nvimdev/lspsaga.nvim",
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { { "nvim-lua/plenary.nvim" } }
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", opt = true }
  },
  "dinhhuy258/git.nvim",
  "lewis6991/gitsigns.nvim",
  "norcalli/nvim-colorizer.lua",
  { "catppuccin/nvim", as = "catppuccin" },
})
