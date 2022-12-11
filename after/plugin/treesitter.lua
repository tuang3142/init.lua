require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
