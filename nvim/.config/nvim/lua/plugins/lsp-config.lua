-- LSP Manager: mason
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "intelephense", "vtsls" },
			})
		end,
	},
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            -- Configuration par serveur avec la nouvelle API
            vim.lsp.config('tailwindcss', {
                capabilities = capabilities,
                filetypes = {
                    "astro", "javascript", "javascriptreact",
                    "typescript", "typescriptreact", "vue", "svelte", "html", "css",
                },
                root_markers = {
                    "tailwind.config.cjs", "tailwind.config.js",
                    "tailwind.config.mjs", "tailwind.config.ts",
                    "postcss.config.js", "package.json", ".git"
                },
                init_options = {
                    userLanguages = { astro = "html" },
                },
            })

            vim.lsp.config('vtsls', {
                capabilities = capabilities,
                filetypes = {
                    "typescript", "javascript",
                    "typescriptreact", "javascriptreact", "vue"
                },
                settings = {
                    vtsls = { autoUseWorkspaceTsdk = true },
                },
            })

            vim.lsp.config('vue_ls', {
                capabilities = capabilities,
            })

            -- Active tous les serveurs installés par mason-lspconfig
            vim.lsp.enable({ 'lua_ls', 'vtsls', 'vue_ls', 'intelephense', 'tailwindcss' })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
            vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", { desc = "Find all references" })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
        end,
    },
}
