return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'bash', 'c', 'html', 'lua', 'markdown', 'vim', 'vimdoc', 'typescript', 'javascript' },
      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
