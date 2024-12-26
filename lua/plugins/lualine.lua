return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        -- Setup lualine with wal theme
        require('lualine').setup({

            options = {
                theme = 'papercolor_dark',  -- Use wal theme if you have lualine-wal installed
            }
        })
    end
}

