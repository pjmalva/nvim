return {
    "folke/trouble.nvim",
    cmd = "Trouble",
    config = function()
        require("trouble").setup {
            auto_preview = false,
            auto_fold = true,
            auto_close = true,
            auto_loc_list = true,
            auto_insert = true,
            signs = {
                error = "🛑",
                warning = "⚠️",
                hint = "💡",
                information = "ℹ️",
                other = "🪧"
            },
            use_lsp_diagnostic_signs = true
        }

        vim.keymap.set('n', '<Leader>xx', ":Trouble diagnostics toggle<CR>", {})
        vim.keymap.set('n', '<Leader>xX', ":Trouble diagnostics toggle filter.buf=0<CR>", {})
        vim.keymap.set('n', '<Leader>xs', ":Trouble symbols toggle focus=false<CR>", {})
        vim.keymap.set('n', '<Leader>xl', ":Trouble lsp toggle focus=false win.position=right<CR>", {})
        vim.keymap.set('n', '<Leader>xp', ":Trouble loclist toggle<CR>", {})
        vim.keymap.set('n', '<Leader>xq', ":Trouble qflist toggle<CR>", {})
    end
}
