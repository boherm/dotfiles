-- Highlight: Treesitter
return {
    {
        'razak17/tailwind-fold.nvim',
        opts= {},
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        ft = { 'html', 'svelte', 'astro', 'vue', 'typescriptreact', 'php', 'blade' },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.config").setup({
                auto_install = true,
                --ensure_installed = {
                --	"vimdoc",
                --	"lua",
                --	"javascript",
                --	"astro",
                --	"bash",
                --	"csv",
                --	"dockerfile",
                --	"git_config",
                --	"html",
                --	"json",
                --	"make",
                --	"php",
                --	"phpdoc",
                --	"regex",
                --	"scss",
                --	"typescript",
                --	"vue",
                --},
                highlight = { enable = true, additional_vim_regex_highlighting = { "php" } },
                indent = { enabled = false },
            })
            vim.treesitter.language.register('markdown', 'mdx')
        end,
    },
}
