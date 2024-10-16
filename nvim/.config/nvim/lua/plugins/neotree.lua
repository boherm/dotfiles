-- File explorer: NeoTree
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
        require('neo-tree').setup {
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    hide_by_name = {
                        '.git',
                        '.DS_Store',
                        'thumbs.db',
                        '.github',
                        '.gitignore',
                        'package-lock.json',
                        'lazy-lock.json',
                        'composer.lock',
                        'go.sum',
                    },
                    never_show = {
                        '.git'
                    },
                },
            }
        }
		vim.keymap.set(
			"n",
			"<leader>e",
			":Neotree filesystem reveal left toggle<CR>"
            , { desc = "Toggle file explorer" }
		) -- show neotree at left
	end,
}
