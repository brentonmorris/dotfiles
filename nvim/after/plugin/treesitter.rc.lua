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
    'awk',
    'bash',
    'c',
    'cmake',
    'css',
    'eex',
    'fish',
    'gitignore',
    'go',
    'graphql',
    'html',
    'html',
    'java',
    'javascript',
    'json',
    'latex',
    'lua',
    'luadoc',
    'make',
    'markdown',
    'perl',
    'php',
    'php',
    'phpdoc',
    'python',
    'r',
    'regex',
    'ruby',
    'sql',
    'swift',
    'terraform',
    'toml',
    'tsx',
    'typescript',
    'yaml',
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
