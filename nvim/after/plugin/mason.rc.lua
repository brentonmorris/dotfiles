require("mason").setup()
require("mason-lspconfig").setup()

local status, mason = pcall(require, "mason")
if (not status) then return end

local status, masonlspconfig = pcall(require, "mason-lspconfig")
if (not status) then return end

masonlspconfig.setup({
  ensure_installed = {
    "clangd",
    "cssls",
    "dockerls",
    "elixirls",
    "lua_ls",
    "pyright",
    "rust_analyzer",
    "solargraph",
    "tailwindcss",
    "tsserver",
  },
})
