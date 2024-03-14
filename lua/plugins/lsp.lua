return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = { "lua_ls", "tsserver", "html", "cssls" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
        callback = function(event)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
          vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
          vim.keymap.set("n", "<M-f>", vim.lsp.buf.format, {})
          vim.keymap.set("v", "<M-f>", vim.lsp.buf.format, {})
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

          local client = vim.lsp.get_client_by_id(event.data.client_id)
          if client and client.server_capabilities.documentHighlightProvider then
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
              buffer = event.buf,
              callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
              buffer = event.buf,
              callback = vim.lsp.buf.clear_references,
            })
          end
        end,
      })

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      -- lspconfig.tsserver.setup({
      --   capabilities = capabilities,
      -- })

      lspconfig.html.setup({
        capabilities = capabilities,
      })

      lspconfig.cssls.setup({
        capabilities = capabilities,
      })
    end,
  },
}
