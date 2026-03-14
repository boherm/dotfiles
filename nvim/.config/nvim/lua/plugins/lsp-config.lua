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
				ensure_installed = { "lua_ls", "ts_ls", "intelephense" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            require('mason-lspconfig').setup({
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup {}
                    end,

                    ['tailwindcss'] = function()
                        lspconfig.tailwindcss.setup {
                            capabilities = capabilities,
                            filetypes = {
                                "astro",
                                "javascript",
                                "javascriptreact",
                                "typescript",
                                "typescriptreact",
                                "vue",
                                "svelte",
                                "html",
                                "css",
                            },
                            root_dir = lspconfig.util.root_pattern(
                                "tailwind.config.cjs",
                                "tailwind.config.js",
                                "tailwind.config.mjs",
                                "tailwind.config.ts",
                                "postcss.config.js",
                                "postcss.config.cjs",
                                "postcss.config.mjs",
                                "postcss.config.ts",
                                "package.json",
                                "astro.config.mjs",
                                "astro.config.js",
                                "astro.config.ts",
                                ".git"
                            ),
                            init_options = {
                                userLanguages = {
                                    astro = "html",
                                },
                            },
                        }
                    end,
                },
            })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc="Go to definition" })
            vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", { desc="Find all references" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc="Code action" })
		end,
	},
}
