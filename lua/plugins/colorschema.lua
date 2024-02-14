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
    },
}
