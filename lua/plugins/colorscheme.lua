return {
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

                        base = "#000000",
                        mantle = "#000000",
                        crust = "#000000",
                    },
                },
            })
            -- vim.cmd.colorscheme "catppuccin"
        end
    },
   {
        "Mofiqul/vscode.nvim",
        name = "vscode",
        priority=1000,
        config = function ()
            require("vscode").setup({
                transparent = true,
                italic_comments = false,
                color_overrides = {
                    vscLineNumber = '#838485',
                    vscPopupFront = '#f0f0f0',
                },
                group_overrides = {
                    StatusLine = { bg="none" },
                    IblIndentCustomColor = { fg="#3f4040" },
                }
            })
            vim.cmd.colorscheme "vscode"
        end
    }
}

