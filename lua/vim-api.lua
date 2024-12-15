vim.keymap.set("n", "<C-=>", function()
  local guifont = vim.o.guifont
  local name, size = guifont:match("^(.*):h(%d+)$")
  size = tonumber(size) + 1
  vim.o.guifont = string.format("%s:h%d", name, size)
end, { desc = "Increase font size" })

-- Decrease font size
vim.keymap.set("n", "<C-->", function()
  local guifont = vim.o.guifont
  local name, size = guifont:match("^(.*):h(%d+)$")
  size = tonumber(size) - 1
  vim.o.guifont = string.format("%s:h%d", name, size)
end, { desc = "Decrease font size" })
