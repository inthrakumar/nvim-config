return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                defaults = {
                    find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
                },
                pickers = {
                    find_files = {
                        theme = "ivy",
                    },
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>p", function()
                builtin.find_files({ hidden = true })
            end, {})
            vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
            vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, {})
            vim.keymap.set("n", "<leader>s", builtin.git_status, {})
            vim.keymap.set("n", "<leader>c",builtin.git_commits	, {})

            require("telescope").load_extension("ui-select")
        end,
    },
}
