return {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
        require("catppuccin").setup({
            transparent_background = true,
            show_end_of_buffer = true,
            styles = {
                comments = {},
                conditionals = {},
            },
            highlight_overrides = {
                mocha = function(mocha)
                    return {
                        LineNr = { fg = mocha.overlay0 },
                    }
                end,
            },
            color_overrides = {
                mocha = {
                    text = "#d8def2",
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                },
            },
        })
        vim.cmd.colorscheme "catppuccin"
    end
}

