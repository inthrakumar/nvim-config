vim.keymap.set("n","<C-a>",":Alpha <CR>")
vim.keymap.set("n","<C-e>",vim.cmd.Ex)
vim.keymap.set("n","<C-l>",":Lazy <CR>")
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
