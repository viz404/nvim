return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require("neo-tree").setup({
            enable_normal_mode_for_inputs = true,
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_by_name = {
                        "node_modules"
                    },
                },
                follow_current_file = {
                    enabled = true,
                },
            },
        })
        vim.keymap.set("n", "<C-b>", ":Neotree toggle<CR>", {})
    end,
}

