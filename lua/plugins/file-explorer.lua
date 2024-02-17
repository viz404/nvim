return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("nvim-tree").setup({
            update_focused_file = {
                enable = true,
            },
            filters = {
                dotfiles = false,
            },
        })
        vim.g.nvim_tree_respect_buf_cwd = 1
        vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end
}

