return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "solargraph",
          "tsserver",
          "pyright",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local opts = {}

      lspconfig.solargraph.setup({
        capabilities = capabilities,
        diagnostics = true,
      })

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })

      lspconfig.pyright.setup({
        capabilities = capabilities,
      })

      -- vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      -- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
      -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
      -- vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    end
  }
}
