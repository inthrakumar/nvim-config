return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- Show hidden files
					hide_dotfiles = false, -- Don't hide dotfiles (hidden files starting with ".")
					hide_gitignored = false, -- Show files ignored by git
					hide_by_name = {
						".git", -- Exclude the .git folder
					},
				},
				follow_current_file = true,
				hijack_netrw_behavior = "open_default",
			},
		})
		vim.api.nvim_create_autocmd("VimEnter", {
			pattern = "*",
			callback = function()
				if vim.fn.argc() == 0 then
					require("neo-tree.command").execute({ dir = vim.loop.cwd() })
				end
			end,
		})

		vim.keymap.set("n", "<C-n>", ":Neotree toggle <CR>", {})
		vim.keymap.set("n", "<C-b>", ":Neotree reveal filesystem left <CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
	end,
}
