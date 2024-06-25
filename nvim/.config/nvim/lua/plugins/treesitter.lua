-- Highlight: Treesitter
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
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
            highlight = { enable = true, disable = { "php" } },
            indent = { enabled = false },
		})
	end,
}
