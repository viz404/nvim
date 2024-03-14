return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    indent = {
      char = "▏",
      highlight = { "IblIndentCustomColor" },
    },
    scope = {
      show_start = false,
      show_end = false,
    }
  },
}
