return {
    "stevearc/overseer.nvim",
    opts = {},
    lazy = true,
    event = "VeryLazy",
    keys = {
        {
            "<leader>ot",
            "<cmd>OverseerToggle<cr>",
            desc = "[O]verseer [T]oggle",
        },
        {
            "<leader>or",
            "<cmd>OverseerRun<cr>",
            desc = "[O]verseer [R]un",
        },
    },
    config = function()
        require("overseer").setup({
            templates = { "builtin", "user.typst_watch", "user.typst_thesis", "user.hugo_serve" },
        })
    end,
}
