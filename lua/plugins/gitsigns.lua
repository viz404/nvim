return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      map('n', ']c', gs.next_hunk, { desc = 'goto next git hunk' })
      map('n', '[c', gs.prev_hunk, { desc = 'goto previous git hunk' })
      map('n', '<leader>gp', gs.preview_hunk, { desc = 'preview git hunk' })
      map('n', '<leader>gb', gs.blame_line, { desc = 'git blame line' })
      map('n', '<leader>gd', gs.diffthis, { desc = 'diff this' })
    end,
  },
}
