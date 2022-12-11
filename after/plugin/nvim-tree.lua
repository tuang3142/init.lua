require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
      adaptive_size = true,
      number = true,
      relativenumber = true,
      -- mappings = {
      --   list = {
      --     { key = "u", action = "dir_up" },
      --   },
      -- },
    },
    renderer = {
      group_empty = true,
      highlight_git = true,
    },
    filters = {
    },
  })
