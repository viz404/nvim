return {
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require("kanagawa").setup({
                commentStyle = { italic = false },
                keywordStyle = { italic = false },
                statementStyle = { bold = false },
                transparent = true,
                colors = {
                    theme = {
                        all = {
                            ui = {
                                bg_gutter = "none"
                            }
                        }
                    }
                },
                overrides = function(colors)
                    return {
                        LineNr = { fg = "#878787", bg = colors.theme.ui.bg_gutter },
                    }
                end,
            })
        end
    },
    {
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
            })
            vim.cmd.colorscheme "catppuccin"
        end
    },
}

