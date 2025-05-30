-- Finder: telescope
return {
    {
        "ElPiloto/telescope-vimwiki.nvim",
    },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-dap.nvim",
        },
		config = function()
			require("telescope").setup({
                defaults = {
                    layout_config = { height = 0.99, width = 0.99 },
                    mappings = {
                        n = {
                            ["?"] = "which_key",
                            ['x'] = require('telescope.actions').delete_buffer
                        },
                    },
                },
			})
            require('telescope').load_extension('vimwiki')
            require("telescope").load_extension("dap")
			local builtin = require("telescope.builtin")

            -- global bindings
			vim.keymap.set("n", "<leader>nc", function() builtin.find_files({ search_dirs={"~/.config/nvim"} }) end, { desc="Edit settings" })
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc="Find files" })
			vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc="Live grep" })
			vim.keymap.set("n", "<leader>fg", builtin.git_status, { desc="Git status" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc="Buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc="Help nvim" })
			vim.keymap.set("n", "<leader>fS", builtin.lsp_document_symbols, { desc="Find Symbols in current buffer" })
			vim.keymap.set("n", "<leader>fF", builtin.lsp_dynamic_workspace_symbols, { desc="Find Symbols everywhere" })
			vim.keymap.set("n", "<leader>fw", require'telescope'.extensions.vimwiki.vimwiki, { desc="Find files in vimwiki" })

            -- dap bindings
			vim.keymap.set("n", "<leader>fd", require'telescope'.extensions.dap.list_breakpoints, { desc="List breakpoints" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
    {
        "jvgrootveld/telescope-zoxide",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nanotee/zoxide.vim",
        },
        config = function()
            local t = require("telescope")
            local z_utils = require("telescope._extensions.zoxide.utils")

            -- Configure the extension
            t.setup({
                extensions = {
                    zoxide = {
                        prompt_title = "[ Walking on the shoulders of TJ ]",
                        mappings = {
                            default = {
                                after_action = function(selection)
                                    print("Update to (" .. selection.z_score .. ") " .. selection.path)
                                end
                            },
                            ["<C-s>"] = {
                                before_action = function(selection) print("before C-s") end,
                                action = function(selection)
                                    vim.cmd.edit(selection.path)
                                end
                            },
                            ["<C-q>"] = { action = z_utils.create_basic_command("split") },
                        },
                    },
                },
            })

            -- Load the extension
            t.load_extension('zoxide')

            -- Add a mapping
            vim.keymap.set("n", "<leader>cd", t.extensions.zoxide.list, { desc = "Change directory with zoxide" })
        end,
    }
}
