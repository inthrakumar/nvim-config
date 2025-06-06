vim.keymap.set("n", "<C-e>", vim.cmd.Ex)
vim.keymap.set("n", "<C-l>", ":Lazy <CR>")
vim.keymap.set("n", "<C-s>", "<C-f>:w<CR>")
-- Map Ctrl+A to move to the top and select everything
vim.keymap.set("n", "<C-a>", "ggvG")
vim.keymap.set("n","s","0");
vim.keymap.set("n","e","$");
vim.keymap.set("v",'<C-c>','"+y')
-- Map Ctrl+S to copy the selected text to the system clipboard
vim.keymap.set("n", "<C-c>", '"+y')
vim.keymap.set("n", "<C-u>", '<C-u>zz')
vim.keymap.set("n", "<C-d>", '<C-d>zz')
vim.keymap.set("v", "y", '"+y')
vim.keymap.set("n", "y", '"+y')
-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

