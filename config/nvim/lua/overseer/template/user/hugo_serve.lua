return {
  name = "Typst: Watch current file",
  builder = function()
    -- Full path to current file (see :help expand())
    local file = vim.fn.expand("%:p")
    return {
      cmd = { "hugo", "serve" },
      components = { "default" },
    }
  end,
  condition = {
    filetype = { "markdown", "md" },
  },
}
