return {
  {
    "Mofiqul/vscode.nvim",
    name = "vscode",
    priority = 1000,
    enabled = false,
    config = function()
      require("vscode").setup({
        transparent = true,
        italic_comments = false,
        color_overrides = {
          vscLineNumber = '#838485',
          vscPopupFront = '#f0f0f0',
        },
        group_overrides = {
          StatusLine = { bg = "none" },
          IblIndentCustomColor = { fg = "#3f4040" },
        }
      })
      -- vim.cmd.colorscheme "vscode"
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    enabled = true,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        show_end_of_buffer = true,
        transparent_background = true,
        styles = {
          comments = {},
          conditionals = {},
        },
        highlight_overrides = {
          mocha = function(mocha)
            return {
              LineNr = { fg = mocha.overlay0 },
              CursorLineNr = { fg = "#ffffff" },
            }
          end,
        },
        color_overrides = {
          all = {
            text = "#ffffff",
          },
        },
      })

      vim.cmd.colorscheme "catppuccin"
    end
  }
}
