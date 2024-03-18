return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
