return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup({
            options = {
                hover = {
                    enabled = true,
                    delay = 150,
                    reveal = { "close" },
                },
            },
        })
        vim.keymap.set("n", "<A-Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true, desc = "Switch to next buffer" })
        vim.keymap.set("n", "<A-S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true, desc = "Switch to previous buffer" })
    end,
}

