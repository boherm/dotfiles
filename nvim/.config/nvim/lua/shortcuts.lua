-- GLOBAL --
vim.keymap.set("n", "<leader>nd", ":chdir ~/", { desc="Change current directory" })
vim.keymap.set("n", "tc", ":tabnew<CR>", { desc="New tab" })

-- WINDOW --
vim.keymap.set("n", "<leader>ws", function()
	vim.cmd("sp")
	-- vim.cmd("wincmd L")
end, { desc="Split horizontally" })
vim.keymap.set("n", "<leader>wv", function()
	vim.cmd("vs")
	-- vim.cmd("wincmd J")
end, { desc="Split vertically" })

vim.keymap.set("n", "<leader>ww", "<C-W>w", { desc="Switch window" })
vim.keymap.set("n", "<leader>wc", "<C-W>c", { desc="Close window" })
vim.keymap.set("n", "<leader>s", ":w<CR>", { desc="Save current buffer" })

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>") -- switch top window
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>") -- switch bottom window
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>") -- switch left window
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>") -- switch right window

-- BUFFER --
vim.keymap.set("n", "<leader>bc", ":bdelete<CR>", { desc="Close buffer" })

-- TAB --
vim.keymap.set("n", "gy", ":tabnew<CR>", { desc="New tab" })

-- Vimwiki
vim.keymap.set("n", "<leader><space>", ":VimwikiToggleListItem<CR>", { desc="Toggle vimwiki item"})
vim.keymap.set("n", "<leader>wt", ":20new +VimwikiIndex<CR>", { desc="Open vimwiki window"})
