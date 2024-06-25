-- Running tests
return {
    "vim-test/vim-test",
    dependencies = {
        "preservim/vimux",
    },
    vim.keymap.set("n", "<leader>tt", ":TestNearest<CR>", { desc="Run nearest test" }),
    vim.keymap.set("n", "<leader>tf", ":TestFile<CR>", { desc="Run current file" }),
    vim.keymap.set("n", "<leader>ts", ":TestSuite<CR>", { desc="Run test suite" }),
    vim.keymap.set("n", "<leader>tl", ":TestLast<CR>", { desc="Run last test" }),
    vim.keymap.set("n", "<leader>tv", ":TestVisit<CR>", { desc="Visit test file" }),
    vim.cmd("let test#strategy = 'vimux'"),
}
