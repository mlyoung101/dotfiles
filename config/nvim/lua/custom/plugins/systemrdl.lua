return {
    "vim-scripts/systemrdl.vim",
    config = function()
        vim.filetype.add({
            extension = {
                rdl = "systemrdl",
            },
        })
    end,
}
