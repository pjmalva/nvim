return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                ensure_installed = {
                    "javascript", "bash", "css", "dart", "dockerfile",
                    "gitignore", "go", "html", "json", "json5", "php",
                    "python", "svelte", "tsx", "typescript", "vue", "xml",
                    "rust", "ruby", "c", "lua", "vim", "vimdoc", "query"
                },
                auto_install = false,
                highlight = {
                    enable = true,
                    disable = function(lang, buf)
                        local max_filesize = 100 * 1024 -- 100 KB
                        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                        if ok and stats and stats.size > max_filesize then
                            return true
                        end
                    end,
                    additional_vim_regex_highlighting = true,
                },
                indent = { enable = true },
            })

            local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
            parser_config.blade = {
                install_info = {
                    url = "https://github.com/EmranMR/tree-sitter-blade",
                    files = {"src/parser.c"},
                    branch = "main",
                    generate_requires_npm = false,
                    requires_generate_from_grammar = false,
                },
            }
        end
    }
}
