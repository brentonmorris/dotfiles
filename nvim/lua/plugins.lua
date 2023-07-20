local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer is not installed")
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

packer.startup(function(use)
  use "wbthomason/packer.nvim"

  use "nvim-lua/plenary.nvim"
  use "BurntSushi/ripgrep"
  use "onsails/lspkind-nvim"
  use 'nvim-tree/nvim-web-devicons'
  use "windwp/nvim-autopairs"
  use "tpope/vim-commentary"
  use "L3MON4D3/LuaSnip"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-nvim-lsp"
  -- use "hrsh7th/cmp-cmdline"
  -- use "hrsh7th/cmp-path"
  use "neovim/nvim-lspconfig"
  use "nvimdev/lspsaga.nvim"
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  }
  use {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } }
  }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }
  use "dinhhuy258/git.nvim"
  use "lewis6991/gitsigns.nvim"

  use "norcalli/nvim-colorizer.lua"
  use { "catppuccin/nvim", as = "catppuccin" }
end)
