require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "help",
    "javascript",
    "typescript",
    "lua",
    "rust",
    "vim",
    "scheme",
    "haskell",
    "ruby",
    "go",
    "html",
    "css",
  },
  highlight = {
    enable = true,
  },
  additional_vim_regex_highlighting = false,
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
