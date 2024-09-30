-- Which key
return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local wk = require("which-key")
        wk.add({
            { "<leader>b", group = "buffers" },
            { "<leader>c", group = "code" },
            { "<leader>d", group = "debug" },
            { "<leader>f", group = "finders" },
            { "<leader>g", group = "git" },
            { "<leader>h", group = "git hunks" },
            { "<leader>n", group = "nvim" },
            { "<leader>t", group = "tests" },
            { "<leader>w", group = "window" },
        })
    end,
}
