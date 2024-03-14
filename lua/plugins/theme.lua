return {
   {
      "Mofiqul/vscode.nvim",
      name = "vscode",
      priority = 1000,
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
   },
}
