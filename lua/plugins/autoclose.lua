return {
    {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end,
    },
    {
        'windwp/nvim-ts-autotag',
        ft = {
            'html',
            'javascript',
            'typescript',
            'javascriptreact',
            'typescriptreact',
            'svelte',
            'vue'
        },
        config = function()
            require('nvim-ts-autotag').setup()
        end,
    },
    {
        'alvan/vim-closetag',
        ft = {
            'html',
            'javascript',
            'typescript',
            'javascriptreact',
            'typescriptreact',
            'svelte',
            'vue'
        },
        config = function()
            vim.g.closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx,*.svelte,*.vue'
        end,
    },
    {
        'mattn/emmet-vim',
        ft = {
            'html',
            'javascript',
            'typescript',
            'javascriptreact',
            'typescriptreact',
            'svelte',
            'vue'
        },
        config = function()
            vim.g.user_emmet_leader_key = ','
        end,
    }
}
