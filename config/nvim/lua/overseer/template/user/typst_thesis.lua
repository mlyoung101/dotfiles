return {
    name = "Typst: Watch thesis",
    builder = function()
        -- Full path to current file (see :help expand())
        local file = vim.fn.expand("%:p")
        return {
            cmd = { "typst", "watch" },
            args = { "mqthesis.typ" },
            cwd = "/home/matt/workspace/dissertation",
            components = { "default" },
        }
    end,
    condition = {
        filetype = { "typst", "typ" },
    },
}
