local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  endwise = {
    enable = true
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'css',
    'fish',
    'html',
    'javascript',
    'json',
    'lua',
    'php',
    'ruby',
    'swift',
    'toml',
    'tsx',
    'yaml',
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
