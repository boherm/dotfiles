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
        wk.register({
            ["<leader>b"] = { name = "buffers" },
            ["<leader>c"] = { name = "code" },
            ["<leader>d"] = { name = "debug" },
            ["<leader>f"] = { name = "finders" },
            ["<leader>g"] = { name = "git" },
            ["<leader>h"] = { name = "git hunks" },
            ["<leader>n"] = { name = "nvim" },
            ["<leader>t"] = { name = "tests" },
            ["<leader>w"] = { name = "window" },
        })
    end,
}
