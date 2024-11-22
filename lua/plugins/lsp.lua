return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")

            lspconfig.ts_ls.setup({
                capabilities = capabilities
            })

            lspconfig.solargraph.setup({
                capabilities = capabilities
            })

            lspconfig.html.setup({
                capabilities = capabilities
            })

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })

            lspconfig.cssls.setup({
                capabilities = capabilities
            })

            lspconfig.astro.setup({
                capabilities = capabilities
            })

            lspconfig.gopls.setup({
                capabilities = capabilities
            })

            lspconfig.pylsp.setup({
                capabilities = capabilities
            })

            lspconfig.rust_analyzer.setup({
                capabilities = capabilities
            })

            lspconfig.vuels.setup({
                capabilities = capabilities
            })

            lspconfig.templ.setup({
                capabilities = capabilities
            })

            lspconfig.intelephense.setup({
                capabilities = capabilities,
                settings = {
                    intelephense = {
                        stubs = {
                            "apache", "bcmath", "bz2", "calendar", "com_dotnet", "Core", "ctype", "curl", "date",
                            "dba", "dom", "enchant", "exif", "FFI", "fileinfo", "filter", "fpm", "ftp", "gd", "gettext",
                            "gmp", "hash", "iconv", "imap", "intl", "json", "ldap", "libxml", "mbstring", "meta", "mysqli",
                            "oci8", "odbc", "openssl", "pcntl", "pcre", "PDO", "pdo_ibm", "pdo_mysql", "pdo_pgsql", "pdo_sqlite", "pgsql",
                            "Phar", "posix", "pspell", "readline", "Reflection", "session", "shmop", "SimpleXML", "snmp", "soap",
                            "sockets", "sodium", "SPL", "sqlite3", "standard", "superglobals", "sysvmsg", "sysvsem", "sysvshm", "tidy",
                            "tokenizer", "xml", "xmlreader", "xmlrpc", "xmlwriter", "xsl", "Zend OPcache", "zip", "zlib",
                            "wordpress", "phpunit"
                        },
                        diagnostics = {
                            enable = true,
                        },
                        files = {
                            maxSize = 5000000
                        }
                    }
                }
            })

            lspconfig.htmx.setup({
                capabilities = capabilities,
            })

            lspconfig.tailwindcss.setup({
                capabilities = capabilities,
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
