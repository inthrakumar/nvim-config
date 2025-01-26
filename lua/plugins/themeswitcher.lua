return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = { "catppuccin","onedark", "everforest","tokyonight","rose-pine","solarized","dracula" }, -- Your list of installed colorschemes.
			livePreview = true,
            			vim.keymap.set("n", "<leader>t",":Themery<CR>", {})
		})
	end,
}
