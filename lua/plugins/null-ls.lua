return {

        "nvimtools/none-ls.nvim",
        config = function ()
            
        local null_ls = require("null-ls"),
        null_ls.setup({
            sources={
                null_ls.builtin.formatting.stylua,
                null_ls.builtin.diagnostics.eslint,
                null_ls.builtin.formatting.prettier
            }
        })
        vim.keymap.set('n','<C-g>',vim.lsp.buf.format,{})
        end 
                
    }
