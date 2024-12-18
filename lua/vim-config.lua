vim.keymap.set("n", "<C-e>", vim.cmd.Ex)
vim.keymap.set("n", "<C-l>", ":Lazy <CR>")
vim.keymap.set("n", "<C-s>", "<C-f>:w<CR>")
-- Map Ctrl+A to move to the top and select everything
vim.keymap.set("n", "<C-a>", "ggvG")
vim.keymap.set("v",'<C-c>','"+y')
-- Map Ctrl+S to copy the selected text to the system clipboard
vim.keymap.set("n", "<C-c>", '"+y')

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	callback = function()
		if vim.fn.argc() == 0 then
			require("neo-tree.command").execute({ toggle = true })
		end
	end,
})
