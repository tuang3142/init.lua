-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'christoomey/vim-tmux-navigator'
  use 'nvim-lualine/lualine.nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'ishan9299/nvim-solarized-lua'
  use 'folke/tokyonight.nvim' -- consider switching
  use("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate"
  })
      -- TJ created lodash of neovim
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      -- 'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  }
end)
