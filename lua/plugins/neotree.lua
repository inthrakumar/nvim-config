return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
        require("neo-tree").setup({filesystem = {
          follow_current_file = true,
          hijack_netrw_behavior = "open_default",
        }})
            vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    if vim.fn.argc() == 0 then
      require("neo-tree.command").execute({ dir = vim.loop.cwd() })
    end
  end,
})
		vim.keymap.set("n", "<C-n>", ":Neotree toggle <CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
	end,
}
