return {
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
        vim.cmd.colorscheme "kanagawa-dragon"
    end
}

