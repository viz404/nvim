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
            ensure_installed = { "lua_ls", "tsserver" },
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.tsserver.setup({
                capabilities = capabilities
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = { globals = { 'vim' } },
                    },
                },
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<M-f>", vim.lsp.buf.format, {})
            vim.keymap.set("v", "<M-f>", vim.lsp.buf.format, {})
        end,
    },
}

