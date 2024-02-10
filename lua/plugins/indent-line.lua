return {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    config = function()
        vim.cmd('highlight IblIndentCustomColor guifg=#3f4040')
        require('ibl').setup({
            indent = {
                char = "▏",
                highlight = 'IblIndentCustomColor',
            },
            scope = {
                show_start = false,
                show_end = false,
            }
        })
    end
}

