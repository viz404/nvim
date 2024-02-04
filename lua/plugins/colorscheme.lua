return {
  'Mofiqul/vscode.nvim',
  priority = 100,
  lazy = false,
  config = function()
    require("vscode").setup({
      transparent = true,
      italic_comments = false,
      color_overrides = {
        vscLineNumber = '#838485',
        vscPopupFront = '#f0f0f0',
      },
    })
    vim.cmd('colorscheme vscode')
  end
}

