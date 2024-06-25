-- Git gutter
return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('gitsigns').setup()
            vim.keymap.set("n", "<leader>hn", ":Gitsigns next_hunk<CR>", { desc="Next hunk" })
            vim.keymap.set("n", "<leader>hp", ":Gitsigns prev_hunk<CR>", { desc="Previous hunk" })
            vim.keymap.set("n", "<leader>hd", ":Gitsigns preview_hunk_inline<CR>", { desc="Preview hunk" })
            vim.keymap.set("n", "<leader>hu", ":Gitsigns reset_hunk<CR>", { desc="Undo hunk" })
        end,
    },
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", { desc="Git blame" })
        end
    }
}
